<template>
<nav_bar>
  <HomeCom/>
</nav_bar>
<footerF/>
</template>
<script>
import {defineComponent} from "vue";
import nav_bar from '../components/navBar.vue';
import HomeCom from '../components/HomeCom.vue';
import footerF from '../components/footerF.vue';

export default defineComponent({
  name: 'HomeView',

  components: {
    nav_bar,
    HomeCom,
    footerF
  },
});
</script>
