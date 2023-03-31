<template>
    <nav_bar>
     <OfertasCom/>
    </nav_bar>
    <footerF/>
    </template>
    <script>
    import {defineComponent} from "vue";
    import nav_bar from '../components/navBar.vue';
    import footerF from '../components/footerF.vue';
    import OfertasCom from "@/components/OfertasCom.vue";

    
    export default defineComponent({
      name: 'OfertasView',
    
      components: {
        nav_bar,
        footerF,
        OfertasCom
      },
    });
    </script>