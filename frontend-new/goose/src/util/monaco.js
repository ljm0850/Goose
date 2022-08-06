import * as Y from "yjs";
import { WebsocketProvider } from "y-websocket";
import { MonacoBinding } from "y-monaco";
import * as monaco from "monaco-editor";

// @ts-ignore
window.MonacoEnvironment = {
  getWorkerUrl: function (moduleId, label) {
    if (label === "json") {
      return "/monaco/dist/json.worker.bundle.js";
    }
    if (label === "css") {
      return "/monaco/dist/css.worker.bundle.js";
    }
    if (label === "html") {
      return "/monaco/dist/html.worker.bundle.js";
    }
    if (label === "typescript" || label === "javascript") {
      return "/monaco/dist/ts.worker.bundle.js";
    }
    return "/monaco/dist/editor.worker.bundle.js";
  },
};

window.addEventListener("load", () => {
  const ydoc = new Y.Doc();
  const link = document.getElementById("link").innerText;
  const provider = new WebsocketProvider(
    "wss://demos.yjs.dev",
    "goose-session" + link,
    ydoc
  );
  const ytext = ydoc.getText("monaco");
  // console
  //   .log(
  //     "monaco.js : ",
  //     document.getElementById("language").innerHTML.toLowerCase()
  //   )
  //   .toLowerCase();
  const compiler = document.getElementById("language").innerHTML.toLowerCase();

  const editor = monaco.editor.create(
    /** @type {HTMLElement} */ (document.getElementById("monaco-editor")),
    {
      value: "",
      language: compiler,
      theme: "vs-dark",
    }
  );

  const monacoBinding = new MonacoBinding(
    ytext,
    /** @type {monaco.editor.ITextModel} */ (editor.getModel()),
    new Set([editor]),
    provider.awareness
  );

  const connectBtn = /** @type {HTMLElement} */ (
    document.getElementById("y-connect-btn")
  );
  connectBtn.addEventListener("click", () => {
    if (provider.shouldConnect) {
      provider.disconnect();
      connectBtn.textContent = "Connect";
    } else {
      provider.connect();
      connectBtn.textContent = "Disconnect";
    }
  });

  // @ts-ignore
  window.example = { provider, ydoc, ytext, monacoBinding };
});
