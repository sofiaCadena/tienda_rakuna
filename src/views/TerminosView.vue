<template>
    <nav_bar>
        <terminosCom/>
    </nav_bar>
    <footerF/>
    </template>
    <script>
    import {defineComponent} from "vue";
    import nav_bar from '../components/navBar.vue';
    import footerF from '../components/footerF.vue';
    import terminosCom from "@/components/terminosCom.vue";
  

    
    export default defineComponent({
      name: 'AccesoriosView',
    
      components: {
        nav_bar,
        footerF,
        terminosCom
   
      },
    });
    </script>