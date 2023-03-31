<template>
    <nav_bar>
      <LabiosComVue/>
    </nav_bar>
    <footerF/>
    </template>
    <script>
    import {defineComponent} from "vue";
    import nav_bar from '../components/navBar.vue';
    import footerF from '../components/footerF.vue';
    import LabiosComVue from "@/components/LabiosCom.vue";
    
    export default defineComponent({
      name: 'AccesoriosView',
    
      components: {
        nav_bar,
        footerF,
        LabiosComVue
      },
    });
    </script>