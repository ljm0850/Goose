<template>
  <ol class="list-group list-group-horizontal mx-auto">
    <li class="list-group-item py-1">
        {{reply.name}}
    </li>
    <li class="list-group-item flex-fill" v-if="!isEditing">{{  payload.re_content  }}</li>
    <!-- 수정할 때 나오는 버튼 -->
    <li v-if="isEditing">  
        <input type="text" v-model="payload.re_content">
        <button @click="update_reply">확인</button>
        <button @click="switchEditing">취소</button>
    </li>
    <!-- 수정 하기 전 나오는 버튼 -->
    <span v-if="currentUser.username === comment.user.username && !isEditing" class="px-1">
    <button @click="switchEditing">수정</button>
    <button @click="deleteReply(payload)">삭제</button>
    </span>
  </ol>
  <p>asd</p>
</template>

<script>

import {reactive} from 'vue'
import {useStore} from 'vuex'
export default {
    
    setup(){
        const store = useStore()
        const state = reactive({
            form: {
                name:'',
                re_content: '',
            },
        })

        
        // 월요일 아침에 작업 재개
        const reply_list = function(){
            console.log(store.getters.article.id)
            store.dispatch('fetchReply', store.getters.article.id )
        }

        reply_list()

    return {store,state,reply_list}}}

</script>

<style>

</style>