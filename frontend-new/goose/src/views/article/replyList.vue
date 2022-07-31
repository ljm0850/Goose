<template>
 <h4>댓글 목록</h4>
 <!-- <replyListItem v-for="reply in replies" :reply="reply" :key="reply.pk"></replyListItem> -->
 <replyListItem/>
 <reply-form/> 
</template>

<script>
import replyForm from './replyForm.vue'
import replyListItem from './replyListItem.vue'
export default {
    components: {
        replyForm,
        replyListItem,
    },
    props: {
        replies: Array
    },
}
</script>

<style>

</style>