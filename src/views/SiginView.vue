<template>
    <nav_bar>
     <SigninCom/>
    </nav_bar>
    <footerF/>
    </template>
    <script>
    import {defineComponent} from "vue";
    import nav_bar from '../components/navBar.vue';
    import footerF from '../components/footerF.vue';
    import SigninCom from "@/components/SigninCom.vue";
  
    
    export default defineComponent({
      name: 'AccesoriosView',
    
      components: {
        nav_bar,
        footerF,
        SigninCom
      },
    });
    </script>