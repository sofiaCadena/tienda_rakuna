<template>
    <nav_bar>
     <ayudaComVue/>
    </nav_bar>
    <footerF/>
    </template>
    <script>
    import {defineComponent} from "vue";
    import nav_bar from '../components/navBar.vue';
    import footerF from '../components/footerF.vue';
    import ayudaComVue from "@/components/ayudaCom.vue";
  
    
    export default defineComponent({
      name: 'AccesoriosView',
    
      components: {
        nav_bar,
        footerF,
        ayudaComVue
      },
    });
    </script>