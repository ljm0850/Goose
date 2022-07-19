<template>
<div>
  <NavBar/>
<<<<<<< HEAD
  <SignUp/>
=======
  <router-view />
</div>

>>>>>>> c664355324f0c091b65817cf06b3eacfde2e71a9
</template>

<script>
import NavBar from '@/components/NavBar'
<<<<<<< HEAD
import SignUp from '@/views/accounts/SignUpView'
=======
>>>>>>> c664355324f0c091b65817cf06b3eacfde2e71a9
export default {
  name: "App",
  
  props: {
    msg: String,
  },

  components:{
    NavBar,
<<<<<<< HEAD
    SignUp,
  }
=======
}
>>>>>>> c664355324f0c091b65817cf06b3eacfde2e71a9
};
</script>