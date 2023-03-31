<template>
  <nav_bar>
    <AboutCom/>
  </nav_bar>
  <footerF/>
  </template>
  <script>
  import {defineComponent} from "vue";
  import nav_bar from '../components/navBar.vue';
  import footerF from '../components/footerF.vue';
  import AboutCom from "@/components/AboutCom.vue";

  
  export default defineComponent({
    name: 'AccesoriosView',
  
    components: {
      nav_bar,
      footerF,
      AboutCom
    },
  });
  </script>