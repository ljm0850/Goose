<template>
  <transition name="modal-fade">
    <div class="modal-backdrop">
      <div class="modal">
        <header class="modal-header">
          <slot name="header">
            <h4>캘린더 작성</h4>
          </slot>
        </header>
        <div class="modal-body">
          <div class="input-Box">
            <label class="form-label">제목</label>
            <input v-model="calendar.title" type="text" id="textea" />
          </div>
          <div class="input-Box">
            <label class="form-label">내용</label>
            <textarea v-model="calendar.content" id="textea"></textarea>
          </div>
          <div class="input-Box">
            <label class="form-label">시작 시간</label>
            <input id="start-time" v-model="time" type="datetime-local" />
          </div>
          <div class="input-Box">
            <label class="form-label">종료 시간</label>
            <input v-model="calendar.end" type="datetime-local" />
          </div>
        </div>
        <footer class="modal-footer">
          <slot name="footer">
            <button type="button" @click="createCalendar()">
              작성
            </button>
            <button type="button" @click="close()">취소</button>
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
  props: {
    time: String,
  },
  components: {},
   emits: ["close"],
  setup(props, {emit}) {
    const store = useStore();

    // const selectedStudy = computed(() => store.getters.selectedStudy);
    const calendar = reactive({
      title: "",
      content: "",
      start: "",
      end: "",
      study_pk: store.getters.selectedStudy.id,
    });

    const createCalendar = () => {
      calendar.start = document.getElementById("start-time").value;
      let check = 0;
      if(calendar.title==""){
          alert('제목을 입력해주세요');
      }else if(calendar.start==""){
          alert('시작 시간을 입력해주세요');
      }else{
        if(calendar.end!=""){
          if(calendar.start.toString(1,4)>calendar.end.toString(1,4)){
            check =1;
          }else if (calendar.start.toString(6,7)>calendar.end.toString(6,7)){
            check =1;
          }else if (calendar.start.toString(9,10)>calendar.end.toString(9,10)){
            check =1;
          }else if (calendar.start.toString(12,13)>calendar.end.toString(12,13)){
            check =1;
          }else if (calendar.start.toString(15,16)>calendar.end.toString(15,16)){
            check =1;
          }
          }
        if(check==1){
              alert('종료 시간을 수정해주세요');
        }else{
      store.dispatch("createCalendar", calendar);
          alert('작성 성공');
      calendar.title = "";
      calendar.content = "";
      calendar.start = "";
      calendar.end = "";
       emit("close");
        }
      }
    };

    return { createCalendar, calendar };
  },


  methods: {
    close: function () {
      this.$emit("close");
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
  width: 25%;
  height: 80%;
}

.modal-header,
.modal-footer {
  padding: 15px;
  display: flex;
}

.modal-header {
  border-bottom: 1px solid #eeeeee;
  color: #000000;
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
textarea {
  width: 100%;
  height: 200px;
  padding: 10px;
  box-sizing: border-box;
  border: solid 1px #000;
  border-radius: 5px;
  font-size: 16px;
  resize: none;
}
input {
  width: 100%;
  padding: 10px;
  box-sizing: border-box;
  border: solid 1px #000;
  border-radius: 5px;
  font-size: 16px;
}
button {
  background: #ffd700;
  color: #000000;
  cursor: pointer;
  width: 100px;
  margin-bottom: 20px;
  font-weight: 600;
  text-align: center;
  border-radius: 80px 40px;
  margin-right: 10px;
}


.modal{
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>
