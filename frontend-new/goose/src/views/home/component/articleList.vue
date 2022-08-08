<template>
  <div class="container">
    <b-card-group class="d-flex">
    <div class="row">
        <ArticleItem v-for="article in openstudyList" :key="article.id" :item="article"/>  
    </div>
    </b-card-group>
  </div>
</template>

<script>
import { useStore } from "vuex"
import { computed } from "vue"
import study1 from "@/assets/study1.png"
import study2 from "@/assets/study2.png"
import study3 from "@/assets/study3.jpg"
import { reactive } from '@vue/reactivity';
import ArticleItem from './articleItem.vue'
export default {
  components: {
    ArticleItem
  },

  setup(){
    const store = useStore()
    const myStudyList = computed(()=> store.getters.myStudyList)
    // const openstudyList = computed(()=> store.getters.openstudyList)
    const openstudyList = store.getters.openstudyList
    
    // const state = reactive({
    //   photo : ""
    // })
    
    const fetchMyStudyList = function(studyId){
      store.dispatch('myStudyList',studyId)
    }
    
    // const changePhoto = ()=>{
    //   if (props.item.image==='study1'){state.photo = study1}
    //   else if (props.item.image==='study2'){state.photo = study2}
    //   else if (props.item.image==="study3"){state.photo = study3}
    // }
    // changePhoto()
    const open_set = function(){
      console.log('시작')
      console.log(openstudyList)
      store.dispatch('saveOpenList')
    }
    
    // open_set()

    // const joinStudy = (studyId) => store.dispatch('joinStudy',studyId)
    return {myStudyList,fetchMyStudyList,openstudyList,open_set}
  },

  watch: {
    $route: {
      handler() {
        // this.open_set()
        this.fetchMyStudyList()
        this.open_set()
      },
      immediate: true
    }
  }
}
</script>

<style>
  .row {
    margin: 10px;
    height:100%;
  }

</style>
