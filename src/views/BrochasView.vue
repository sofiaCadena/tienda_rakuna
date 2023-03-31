<template>
    <nav_bar>
      <BrochasComVue/>
    </nav_bar>
    <footerF/>
    </template>
    <script>
    import {defineComponent} from "vue";
    import nav_bar from '../components/navBar.vue';
    import footerF from '../components/footerF.vue';
    import BrochasComVue from "@/components/BrochasCom.vue";
    
    export default defineComponent({
      name: 'AccesoriosView',
    
      components: {
        nav_bar,
        footerF,
        BrochasComVue
      },
    });
    </script>