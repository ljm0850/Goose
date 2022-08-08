<template>
  <transition name="modal-fade">
    <div class="modal-backdrop">
      <div class="modal">
        <header class="modal-header">
          <slot name="header">
            This is the default tile!
            <button type="button" class="btn-close" @click="close()">x</button>
          </slot>
        </header>
        <section class="modal-body">
           <FullCalendar :options="calendarOptionsM" />
        </section>
        <footer class="modal-footer">
          <slot name="footer">
            I'm the default footer!
            <button
              type="button"
              class="btn-green"
              @click="close()"
            >Close me!</button>
          </slot>
        </footer>
      </div>
    </div>
  </transition>
</template>

<script>
import "@fullcalendar/core/vdom"; // solves problem with Vite
import FullCalendar from "@fullcalendar/vue3";
import dayGridPlugin from "@fullcalendar/daygrid";
import interactionPlugin from "@fullcalendar/interaction";
import koLocale from "@fullcalendar/core/locales/ko";
import { useStore } from "vuex";

export default {
    components: {
    FullCalendar, // make the <FullCalendar> tag available
  },
    data() {
    const store = useStore();
  
    return {
      createModal:true,
         isModalVisible: false,
      calendars: [],
      calendarOptionsW: {
        plugins: [dayGridPlugin, interactionPlugin],
        // initialView: "dayGridWeek",
        initialView: "dayGrid", // the name of a generic view
        duration: { weeks: 2 },
        selectable: true,
        dateClick: this.handleDateClick,
        eventClick: this.handleEventClick,
        height: 500,
        locale: koLocale,
        timeZone: "local",
        events: JSON.parse(JSON.stringify(store.getters.events)),
      },
      calendarOptionsM: {
        plugins: [dayGridPlugin, interactionPlugin],
        initialView: "dayGridMonth",
        selectable: true,
        height: 700,
        dateClick: this.handleDateClick,
        eventClick: this.handleEventClick,

        locale: koLocale,
        timeZone: "local",
        events: JSON.parse(JSON.stringify(store.getters.events)),
      },
    };
  },
  methods: {
        handleDateClick: function (arg) {
      alert("date click! " + arg.dateStr);
      this.createModal=!this.createModal;
    },
    handleEventClick: function (arg) {
      console.log(arg.event);
      alert("event click! " + arg.event.startStr + arg.event.id);
    },
    close: function() {
      this.$emit("close");
    }
  }
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
  background: #FFFFFF;
  box-shadow: 2px 2px 20px 1px;
  overflow-x: auto;
  display: flex;
  flex-direction: column;
}

.modal-header,
.modal-footer {
  padding: 15px;
  display: flex;
}

.modal-header {
  border-bottom: 1px solid #eeeeee;
  color: #4AAE9B;
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
  color: #4AAE9B;
  background: transparent;
}

.btn-green {
  color: white;
  background: #4AAE9B;
  border: 1px solid #4AAE9B;
  border-radius: 2px;
}
</style>
