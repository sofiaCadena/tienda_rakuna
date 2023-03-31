<template>
    <nav_bar>
      <LoginCom/>
    </nav_bar>
    <footerF/>
    </template>
    <script>
    import {defineComponent} from "vue";
    import nav_bar from '../components/navBar.vue';
    import footerF from '../components/footerF.vue';
    import LoginCom from "@/components/LoginCom.vue";
  
    
    export default defineComponent({
      name: 'AccesoriosView',
    
      components: {
        nav_bar,
        footerF,
        LoginCom
      },
    });
    </script>