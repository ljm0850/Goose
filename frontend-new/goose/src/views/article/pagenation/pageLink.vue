<template>
  <ul class="pagination justify-content-center">

    <li class="page-item" v-if="prev">
      <router-link :to="`/articles/${ (state.startPageIndex - 1) * state.listRowCount }`" class="page-link" aria-label="Previous" @click.native="movePage(state.startPageIndex - 1)">
        <span aria-hidden="true">&laquo;</span>
      </router-link>
    </li>

    <li v-for="index in state.endPageIndex-state.startPageIndex + 1 " :key="index" class="page-item" :class="{active:( (state.startPageIndex + index - 1) == state.currentPageIndex)}">
      <router-link :to="`/articles/${ (state.startPageIndex + index - 1) * state.listRowCount }`" class="page-link"  @click.native="movePage(state.startPageIndex + index - 1)">{{ state.startPageIndex + index - 1 }}</router-link>
      <!-- <a class="page-link" href="javascript:movePage(' + i + ')">' + i + '</a> -->
    </li>

    <li class="page-item" v-if="next">
      <router-link :to="`/articles/${ (state.endPageIndex + 1) * state.listRowCount }`" class="page-link" aria-label="Next"  @click.native="movePage(state.endPageIndex + 1)">
        <span aria-hidden="true">&raquo;</span>
      </router-link>
    </li>
  </ul>
</template>

<script>
import { reactive,computed } from "vue";
import {  useStore  } from 'vuex'


export default{
    setup(){
        const store = useStore()
        const state = reactive({
            totalListItemCount: 0,
            listRowCount: 10,
            pageLinkCount: 10,
            currentPageIndex: 1,

            pageCount: 0,
            startPageIndex: 0,
            endPageIndex: 0,
            prev: false,
            next: false
        })

        const movePage = function(param){
            state.currentPageIndex = param
            store.dispatch
        }
    

return {state}}}
</script>