<template>
<div class="container d-flex">
  <img src="http://encykorea.aks.ac.kr/Contents/GetImage?t=origin&id=da07ff58-06ea-4cb2-a957-0964d192cb14&w=878&h=582" alt="기본사진">
  <div>
    <div class="container d-flex">
      <div class="m-3">스터디 이름{{ stu }}</div>
      <div class="m-3">인원</div>
    </div>
    <div>가입 요청 확인</div>
    <div>스터디 소개글</div>
  </div>
</div>
<div class="container d-flex">
  <div>스터디 주소 ~~~</div>
  <button>입장하기</button>
</div>
<div>
  <button>전체보기</button>
  <Board />
</div>
<div>
  <button>전체보기</button>
  <Callender />
</div>
<div class="container d-flex">
  <button>스터디 터트리기</button>
  <button>스터디 탈퇴하기</button>
  <button>스터디 수정</button>
</div>
</template>

<script>
import Board from '@/components/StudyPage/Board.vue'
import Callender from '@/components/StudyPage/Callender'
import { useStore } from "vuex"
import { computed } from "vue"

export default {
  components:{
      Board,  // 항목을 몇개만 보여주는건 Board에서 props를 이용하여 처리할 예정(전체보기와 구분)
      // 그전에 b-table 관련해서 찾아보자
      Callender,
  },

  setup() {
    const store = useStore()
    const studyName = computed(() => store.getters.selectStudy )

    return {studyName}
  }
}
</script>

<style>

</style>