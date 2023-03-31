<template>
    <nav_bar>
      <PielFacialCom/>
    </nav_bar>
    <footerF/>
    </template>
    <script>
    import {defineComponent} from "vue";
    import nav_bar from '../components/navBar.vue';
    import footerF from '../components/footerF.vue';
    import PielFacialCom from "@/components/PielFacialCom.vue";
    
    export default defineComponent({
      name: 'AccesoriosView',
    
      components: {
        nav_bar,
        footerF,
        PielFacialCom
      },
    });
    </script>