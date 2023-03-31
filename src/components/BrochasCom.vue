<template>
  <div>
<!-- PRODUCTOS -->
<v-row style="margin-top: 60px;">
<v-col cols="3" v-for="producto in productos" :key="producto.id">
     
     <v-card 
         class="mx-auto bg-purple-lighten-1"
         max-width="250" 
         
       >
         <v-img
           class="align-end text-white"
           height="250"
           width="250"
           :src="producto.imagen"
           cover
         >
         </v-img>

         <v-card-title class="pt-4">
           {{producto.nombre}}
           <br>              
          ${{producto.precio}}
         </v-card-title>

         <v-card-actions>
           <v-btn class="bg-purple-darken-2">
           Comprar
           </v-btn>
           <v-btn class="bg-purple-darken-2" style="font-size: 25px;">
             +
           </v-btn>
           <v-btn class="bg-purple-darken-2" style="font-size: 25px;">
             -
           </v-btn>
         </v-card-actions>
       </v-card>
</v-col>
</v-row>
</div>
 </template>

<script>
import axios from 'axios';

export default {
data() {
 return {
   productos: [],
 };
},
mounted() {
 axios.get('http://localhost:3000/productos/brochas').then((response) => {
   this.productos = response.data;
 });
},
};
</script>