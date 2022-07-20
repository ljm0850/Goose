import { createWebHistory, createRouter } from 'vue-router';
import Home from '@/views/home/home.vue'
import Login from '@/views/accounts/loginView.vue'
import test from '@/views/home/test.vue'
import articleList from '@/views/article/articleList'
import newArticle from '@/views/article/newArticle'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
  },
  {
    path: '/login',
    name: 'Login',
    component: Login,},
    {
    path: '/test',
    name: 'Test',
    component: test
  },{
  path: '/article',
  name: 'Article',
  component: articleList
},{
path: '/newarticle',
name: 'newArticle',
component: newArticle
},
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;