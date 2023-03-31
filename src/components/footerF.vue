<template>
    <v-footer
      class="bg-pink-lighten-3 text-center d-flex flex-column"
    >
      <div>       
      <a href="https://es-la.facebook.com/" target="_blank"><v-btn  flat class="bg-pink-lighten-3">  <v-icon style="font-size: 35px;"> mdi-facebook</v-icon></v-btn> </a>  
      <a href="https://twitter.com/?lang=es" target="_blank"> <v-btn  flat class="bg-pink-lighten-3">  <v-icon style="font-size: 35px;"> mdi-twitter</v-icon></v-btn></a> 
      <a href="https://www.instagram.com/" target="_blank"> <v-btn  flat class="bg-pink-lighten-3">  <v-icon style="font-size: 35px;"> mdi-instagram</v-icon></v-btn></a> 
     </div>
      <div style="margin-left: -1000px; margin-top: -20px;">
       <a href="https://www.pielcanelabyjuana.com/es/terminosycondiciones" style="text-decoration: none;"><h4>Terminos y condiciones</h4></a>
       <a href="https://www.pielcanelabyjuana.com/es/politica-de-envios-PG10" style="text-decoration: none;"> <h4 style="margin-top: 20px; text-decoration: none;">Politica de envios</h4></a>
       
      </div>
      <div style="margin-top: -50px; margin-right: -1000px;">
        <h4 style="margin-top: -18px;" >Contacto: </h4>      
        <h5>3053072245 Línea única</h5>
        <h5>rakuna.ventas@gmail.com</h5>

      </div>
  
      <v-divider></v-divider>
  
      <div style="margin-top: -30px;">
        {{ new Date().getFullYear() }} — <strong>Rakuna. MEDELLIN-COLOMBIA</strong>
      </div>
    </v-footer>
  </template>
  
  <script>
    export default {
      data: () => ({

      }),
    }
  </script>