<template>
    <nav_bar>
      <OjosCom/>
    </nav_bar>
    <footerF/>
    </template>
    <script>
    import {defineComponent} from "vue";
    import nav_bar from '../components/navBar.vue';
    import footerF from '../components/footerF.vue';
    import OjosCom from "@/components/OjosCom.vue";
    
    export default defineComponent({
      name: 'AccesoriosView',
    
      components: {
        nav_bar,
        footerF,
        OjosCom
      },
    });
    </script>