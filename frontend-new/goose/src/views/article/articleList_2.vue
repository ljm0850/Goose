<template>
<h1 class="d-flex justify-content-center">스터디 모집 게시판</h1>
<div class="container">
<!-- 검색창 -->
<div class="input-group mb-3">
<select v-model="state.search.state">
  <option value=null>상태</option>
  <option value="모집중">모집중</option>
  <option value="진행중">진행중</option>
  <option value="모집완료">모집완료</option>
</select>
<select v-model="state.search.category">
  <option value=null>분류</option>
  <option value="토익">토익</option>
  <option value="면접">면접</option>
  <option value="알고리즘">자유</option>
</select>
  <input type="text" class="form-control" v-model="state.search.title">
    <button class="btn btn-outline-secondary" type="button" @click="filterArticles()">검색</button>
</div>

<!-- 게시판 -->
<div class="board-list">
<div v-if="isList">
    <table class="table table-hover">
      <thead>
      <tr>
        <th>No</th>
        <th>제목</th>
        <th>작성자</th>
        <th>등록일시</th>
        <th>조회수</th>
      </tr>
      </thead>
      <tbody>
      <tr v-for="row in articles" :key="row">
        <td>{{ row.id }}</td>
        <td><div @click="onclick(row.id)" class="btn">{{row.title}}</div></td>
        <td>{{ row.name }}</td>
        <td>{{ row.date }}</td>
        <td>{{ row.hit  }}</td>
      </tr>
      </tbody>
    </table>
</div>
</div>
<pageLink/>
<!-- 무한 스크롤이랑 카드형 게시글? -->
  <router-link to="/newarticle" class="btn btn-primary">글 작성</router-link>
</div>
</template>

<script>
import { reactive,computed } from 'vue'
import { onMounted } from 'vue'
import {useStore} from 'vuex'
import _ from 'lodash'
import { useRouter } from 'vue-router'
import pageLink from './pagenation/pageLink.vue'

export default {

  components: {pageLink},
    setup(){
        // 추후 게시판 연결 후 ref값 변경 - 페이지네이션 관련 코드
        const Router = useRouter()

        const store = useStore()
        // 게시판
        const state = reactive({
            article_list: [
            ],
            headers: ['글번호','상태','분류','제목','작성자','등록일','조회수'],
            articles: [],
            search: {
              state: null,
              category: null,
              title: null,
            },
        })
        
        const filterArticles = function(){
          store.dispatch('fetchArticles',1)
          store.dispatch('filterArticles',state.search)
        }

        const articles_set = function(){
          store.dispatch('fetchArticles',1) 
          state.articles = store.getters.articles
        }
        articles_set()

        const isList = computed(() => !_.isEmpty(state.articles))

        const onclick = function(item){
        store.dispatch('fetchArticle', item)
        Router.push({name: 'ArticleDetail', params: {id:item}})
        }
        
        const articles = computed(() => store.getters.articles)

    
    return {state,filterArticles,onMounted,articles_set,isList,onclick,articles}


    }
    
}
</script>

<style scoped>
  .input-Box:nth-child(3) {
    display: flex;
    /* justify-content: space-evenly; */
    justify-content: end;

    }
    .input-Box button{
    background: #ffd700;
    color: #000000;
    cursor: pointer;
    width: 100px;
    margin-bottom: 20px;
    font-weight: 600;
    text-align: center;
    border-radius: 80px 40px;
    margin-right: 30px;
  }

</style>
