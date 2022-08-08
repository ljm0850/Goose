<template>
<div class="container">
  <div class="d-flex justify-content-between">
    <h4>스터디 일정관리</h4>
    <button type="button" class="btn btn-3 hover-border-3" data-bs-toggle="modal" data-bs-target="#callenderModal">
        전체보기
    </button>
  </div>
  <!-- 전체보기 누를경우 보이는 내용 -->
  <div class="modal fade" id="callenderModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-fullscreen modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">캘린더</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div>      <FullCalendar :options="calendarOptionsM" /></div>
    
        </div>
        <div class="modal-footer">
           
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
            Close
          </button>
        </div>
      </div>
    </div>
  </div>
  
  <br>
  <div class="container box">
    <FullCalendar id="qwe" :options="calendarOptionsW" />
  </div>
  <!-- <div v-if="createModal" >
    <div >    
      <h4>상세페이지</h4>
      <p>상세 페이지 내용</p>
      <button>닫기</button>
    </div>
  </div> -->
</div>
    <div id="app">
      <button type="button" class="btn" @click="showModal">Open Modal!</button>
      <HelloWorld v-show="isModalVisible" @close="closeModal"/>
    </div>
</template>

<script>
import "@fullcalendar/core/vdom"; // solves problem with Vite
import FullCalendar from "@fullcalendar/vue3";
import dayGridPlugin from "@fullcalendar/daygrid";
import interactionPlugin from "@fullcalendar/interaction";
import koLocale from "@fullcalendar/core/locales/ko";
import { useStore } from "vuex";
import HelloWorld from "@/components/StudyPage/HelloWorld.vue"

export default {
    name: "App",
  components: {
    FullCalendar, // make the <FullCalendar> tag available
      HelloWorld: HelloWorld,
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
        duration: { weeks: 4 },
        selectable: true,
        dateClick: this.handleDateClick,
        eventClick: this.handleEventClick,
        height: 750,
        locale: koLocale,
        timeZone: "local",
        background:"black",
        background_color: "#FF9900",
               color:"black",
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
            this.isModalVisible = true;
    },
    handleEventClick: function (arg) {
      console.log(arg.event);
      alert("event click! " + arg.event.startStr + arg.event.id);
    },
        showModal() {
      this.isModalVisible = true;
    },
    closeModal() {
      this.isModalVisible = false;
    }
  },
};
</script>

<style scoped>
h4 {
    font-weight:bold;
}
* {
    font-family: "NanumSquare", sans-serif;
}
:active, :hover, :focus {
outline: 0!important;
outline-offset: 0;
}
::before,
::after {
  position: absolute;
  content: "";
}
.btn {
  position: relative;
  display: inline-block;
  width: auto; height: auto;
  background-color: transparent;
  border: none;
  cursor: pointer;
  margin: 0px 25px 15px;
  min-width: 150px;
}
  .btn span {         
    position: relative;
    display: inline-block;
    font-size: 14px;
    font-weight: bold;
    letter-spacing: 2px;
    text-transform: uppercase;
    top: 0; left: 0;
    width: 100%;
    padding: 15px 20px;
    transition: 0.3s;
  }
.btn.hover-border-3::before,
.btn.hover-border-3::after {
  width: 0%; height: 0%;
  opacity: 0;
  transition: width 0.2s 0.15s linear, height 0.15s linear, opacity 0s 0.35s;
}
.btn.hover-border-3::before {
  top: 0; right: 0;
  border-top: 1px solid rgb(28, 31, 30);
  border-left: 1px solid rgb(28, 31, 30);
}
.btn.hover-border-3::after {
  bottom: 0; left: 0;
  border-bottom: 1px solid rgb(28, 31, 30);
  border-right: 1px solid rgb(28, 31, 30);
}
.btn.hover-border-3:hover::before,
.btn.hover-border-3:hover::after {
  width: 100%; height: 99%;
  opacity: 1;
  transition: width 0.2s linear, height 0.15s 0.2s linear, opacity 0s;   
}

.container.box{
    background-color: #f0f0f1;
    margin-top: 1rem;
    padding-top: 1rem;
    height:85%;
    border-radius: 10px;
    }
    #qwe{
      background-color: black;
    }
</style>
