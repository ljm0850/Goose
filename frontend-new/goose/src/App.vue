<template>
  <NavBar/>
  <SignUp/>
</template>

<script>
import NavBar from '@/components/NavBar'
import SignUp from '@/views/accounts/SignUpView'
export default {
  name: "HelloWorld",
  
  props: {
    msg: String,
  },

  components:{
    NavBar,
    SignUp,
  }
};
</script>