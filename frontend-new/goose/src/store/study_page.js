import axios from "axios"
import rest from '@/api/rest'
import router from "@/router"

export default {
  state:{
    myStudyList : [],
    authStudyList: [],
    studyJoinList : [],
    selectedStudy : {
        // "category": "string",
        // "date": "string",
        // "id": 0,
        // "image": "string",
        // "maxmember": 0,
        // "member": 0,
        // "open": 0,
        // "password": "string",
        // "title": "string",
        // "url_conf": "string",
        // "url_page": "string"
    },
    studyBoard:[],
    studyMemberList:[],
    choiceImg : ""
  },

  getters:{
    selectedStudy: state => state.selectedStudy,
    myStudyList : state => state.myStudyList,
    authStudyList : state => state.authStudyList,  // 권한 가지는 스터디들의 목록
    studyBoard : state => state.studyBoard,
    studyJoinList: state => state.studyJoinList,
    isJoinList: state => !!state.saveJoinList,
    studyMemberList: state => state.studyMemberList,
    choiceImg : state => state.choiceImg
  },

  mutations:{
    SET_SELECTED_STUDY: (state, study) => state.selectedStudy = study,
    SET_STUDY_BOARD: (state, studyBoard) => state.selectedStudy.studyBoard = studyBoard,
    SET_JOIN_LIST: (state,joinArray) => state.studyJoinList = joinArray,
    SET_MY_STUDY_LIST: (state,studyList) => state.myStudyList = studyList,
    SET_AUTH_STUDY_LIST: (state, authStudyList) => state.authStudyList = authStudyList,
    SET_STUDY_MEMBER_LIST: (state, memberList) => state.studyMemberList = memberList,
    SET_CHOICE_IMG: (state,img) => state.choiceImg = img
  },

  actions:{
    saveStudyBoard({commit}, studyBoard) {
      commit('SET_STUDY_BOARD',studyBoard)
    },

    saveJoinList({commit}, joinArray) {
      commit('SET_JOIN_LIST',joinArray)
    },

    selectStudy({commit,getters,dispatch},id){
      axios({
        url: rest.study.study_search(id),
        method: 'get',
        headers: getters.authHeader,
      })
      .then((res)=>{
        commit('SET_SELECTED_STUDY',res.data)
        dispatch('saveStudyMemberList',res.data.id)
        // router.push({path:'/studyHome'})
      })
      .then(()=>{
        dispatch('joinList')
      })
      .catch((err)=>{
        console.log("스터디 선택 실패")
        console.log(err)
      })
    },
    
    createStudy({getters},credential){
      axios({
        url: rest.study.study_create(),
        method: 'post',
        headers: getters.authHeader,
        data: credential
      })  
      .then((res) =>{
        console.log(res)
        router.push({name: 'Home'})
      })
      .catch(err => {
        console.log('catch')
        console.log(err)
    })
    },

    updateStudy({getters,dispatch},credential){
      axios({
        url: rest.study.study_update(),
        method: 'put',
        headers: getters.authHeader,
        data: credential
      })
      .then((res)=>{
        console.log("업데이트 성공")
        console.log(getters.selectedStudy.id)
        dispatch('selectStudy',getters.selectedStudy.id)
      })
    },

    deleteStudy({commit,getters}){
      console.log(getters.selectedStudy)
      console.log(rest.study.study_remove(getters.selectedStudy.id))
      axios({
        url: rest.study.study_remove(getters.selectedStudy.id),
        method: 'delete',
        headers: getters.authHeader
      })
      .then(()=>{
        console.log("삭제 완료")
        commit('SET_SELECTED_STUDY',{})
        router.push({name: 'Home'})
      })
      .catch(err => {
        console.log(err)
        console.log("망함")
        alert("스터디 삭제에 실패했습니다.")
      })
      router.push({ name:'Home' })
    },
    myStudyList({getters,commit}){
      axios({
        url: rest.study.my_study_list(),
        method: 'get',
        headers: getters.authHeader
      })
      .then(res =>{
        commit('SET_MY_STUDY_LIST',res.data)
      })
    },
    authStudyList({getters,commit}){
      axios({
        url: rest.study.auth_study_list(),
        method: 'get',
        headers: getters.authHeader,
      })
      .then(res=> {
        commit('SET_AUTH_STUDY_LIST',res.data)
      })
    },

    saveStudyMemberList({getters,commit},id){
      axios({
        url: rest.study.study_member_list(id),
        method: 'get',
        headers: getters.authHeader
      })
      .then((res)=>{
        commit('SET_STUDY_MEMBER_LIST',res.data)
      })
    },

    joinList({getters,dispatch},){
      console.log(getters.selectedStudy)
      axios({
        url: rest.study.study_join_list(getters.selectedStudy.id),
        method: 'get',
      })
      .then(res => {
        dispatch('saveJoinList',res.data)
        console.log(getters.studyJoinList)
      })
      .catch(err => {
        console.log("catch")
        console.log(err)
      })
    },
    
    //스터디 가입 신청
    joinStudy({getters},studyId){
      console.log("스토어 도착")
      axios({
        url: rest.study.study_join(studyId),
        method: 'post',
        headers: getters.authHeader
      })
      .then(res=>{
        console.log("스터디 가입신청 완료")
        console.log(res)
      })
      .catch(res=>{
        console.log("스터디 가입 신청 실패")
        console.log(res)
      })
    },

    // 스터디 가입신청 승락
    joinAgree({getters,dispatch},credential){
      console.log("승락")
      axios({
        url: rest.study.study_join_agree(),
        method: 'post',
        headers: getters.authHeader,
        data: credential
      })
      .then(res =>{
        console.log(res)
        dispatch('joinList')
      })
    },

    // 스터디 가입신청 거절
    joinRefuse({getters,dispatch},joinStudyId){
      console.log("거절")
      axios({
        url: rest.study.study_join_delete(joinStudyId),
        method: 'delete',
        headers: getters.authHeader,
      })
      .then(res=>{
        console.log(res)
        dispatch('joinList')
      })
    },

    selectImg({commit},imgurl){
      console.log(imgurl)
      commit('SET_CHOICE_IMG',imgurl)
    }


  },
}