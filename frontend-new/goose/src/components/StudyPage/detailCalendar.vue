<template>
  <transition name="modal-fade">
    <div class="modal-backdrop">
      <div class="modal" v-if="!modify">
        <header class="modal-header">
          <slot name="header">
            캘린더 확인{{ event.id }}
            <button type="button" class="btn-close" @click="close()">x</button>
          </slot>
        </header>
        <div class="modal-body">
          <div class="input-Box">
            <label class="form-label">제목 : {{ event.title }}</label>
          </div>
          <div class="input-Box">
            <label class="form-label"
              >작성자 : {{ event.writer }}{{ event.user_pk }}{{ upk }}</label
            >
          </div>
          <div class="input-Box">
            <label class="form-label">내용 : {{ event.content }}</label>
          </div>
          <div class="input-Box">
            <label class="form-label"
              >시작 시간 :
              {{ event.start.substring(0, 16).replace("T", "-") }}</label
            >
          </div>
          <div class="input-Box">
            <label class="form-label" v-if="event.end"
              >종료 시간 :
              {{ event.end.substring(0, 16).replace("T", "-") }}</label
            >
          </div>
        </div>
        <footer class="modal-footer">
          <slot name="footer">
            <button
              type="button"
              class="btn-green"
              @click="deleteCalendar(), close()"
              v-if="upk == event.user_pk"
            >
              삭제
            </button>
            <button
              type="button"
              class="btn-green"
              @click="changeView()"
              v-if="upk == event.user_pk"
            >
              수정
            </button>
            <button type="button" class="btn-green" @click="close()">
              닫기
            </button>
          </slot>
        </footer>
      </div>
      <div class="modal" v-if="modify">
        <header class="modal-header">
          <slot name="header">
            캘린더 수정{{ event.id }}
            <button type="button" class="btn-close" @click="close()">x</button>
          </slot>
        </header>
        <div class="modal-body">
          <div class="input-Box">
            <label class="form-label">제목</label>
            <input type="text" v-model="updateInfo.title" />
          </div>
          <div class="input-Box">
            <label class="form-label">내용</label>
            <textarea v-model="updateInfo.content"></textarea>
          </div>
          <div class="input-Box">
            <label class="form-label">시작 시간</label>
            <input
              id="start-time"
              type="datetime-local"
              v-model="updateInfo.start"
            />
          </div>
          <div class="input-Box">
            <label class="form-label">종료 시간</label>
            <input type="datetime-local" v-model="updateInfo.end" />
          </div>
        </div>
        <footer class="modal-footer">
          <slot name="footer">
            <button
              type="button"
              class="btn-green"
              @click="updateCalendar(), close()"
              v-if="upk == event.user_pk"
            >
              수정
            </button>
            <button type="button" class="btn-green" @click="changeView()">
              취소
            </button>
          </slot>
        </footer>
      </div>
    </div>
  </transition>
</template>

<script>
import { reactive } from "@vue/reactivity";
import { useStore } from "vuex";

export default {
  setup() {
    const store = useStore();
    const upk = store.getters.loginUser.id;
    // const deleteCalendar = () => {
    //   // store.dispatch("deleteCalendar", event.id);
    // };
    // return { deleteCalendar };

    // const selectedStudy = computed(() => store.getters.selectedStudy);
    const updateInfo = reactive({
      title: store.getters.event.title,
      content: store.getters.event.content,
      // start: store.getters.event.start.subString(0, 16),
      // end: store.getters.event.end,
      start: "",
      end: "",
      study_pk: store.getters.event.study_pk,
      id: store.getters.event.id,
    });

    const updateCalendar = () => {
      updateInfo.start = document.getElementById("start-time").value;
      updateInfo.start += "+09:00";
      if (updateInfo.end != "") updateInfo.end += "+09:00";
      store.dispatch("updateCalendar", updateInfo);
    };

    return { upk, updateCalendar, updateInfo };
  },
  data() {
    return {
      modify: false,
    };
  },
  computed: {
    event: function () {
      const store = useStore();
      return store.getters.event;
    },
  },
  methods: {
    close: function () {
      this.$emit("close");
    },
    changeView: function () {
      this.modify = !this.modify;
    },

    deleteCalendar: function () {
      this.$store.dispatch("deleteCalendar", this.event);
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.modal-fade-enter,
.modal-fade-leave-active {
  opacity: 0;
}

.modal-fade-enter-active,
.modal-fade-leave-active {
  transition: opacity 0.5s ease;
}
.modal-backdrop {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: rgba(0, 0, 0, 0.3);

  display: flex;
  justify-content: center;
  align-items: center;
}

.modal {
  background: #ffffff;
  box-shadow: 2px 2px 20px 1px;
  overflow-x: auto;
  display: flex;
  flex-direction: column;
  width: 50%;
  height: 50%;
}

.modal-header,
.modal-footer {
  padding: 15px;
  display: flex;
}

.modal-header {
  border-bottom: 1px solid #eeeeee;
  color: #4aae9b;
  justify-content: space-between;
}

.modal-footer {
  border-top: 1px solid #eeeeee;
  justify-content: flex-end;
}

.modal-body {
  position: relative;
  padding: 20px 10px;
}

.btn-close {
  border: none;
  font-size: 20px;
  padding: 20px;
  cursor: pointer;
  font-weight: bold;
  color: #4aae9b;
  background: transparent;
}

.btn-green {
  color: white;
  background: #4aae9b;
  border: 1px solid #4aae9b;
  border-radius: 2px;
}
</style>
