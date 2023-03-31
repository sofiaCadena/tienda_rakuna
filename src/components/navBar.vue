<template>
  <v-app id="inspire">
    <!-- mini barrita superior -->
    <v-system-bar style="height: 34px;" class="bg-pink-darken-1">
      <h1 style="font-size: small; margin-right: 135px;">
     <strong>Envíos GRATIS para compras superiores a $200.000 COP. Nuestros tiempos promedios de 
      entrega en estos momentos son de 3-10 días hábiles en ciudades principales.</strong>
    </h1>
    </v-system-bar>

    <!-- Barra navegación -->
    <v-app-bar style="height: 70px; margin-top: 10px;" class="bg-pink-lighten-3">
      <v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>
      <v-toolbar-title > 
        <router-link to="/">
        <v-img src="../assets/cropped-trendy_shop_logo-2.png"
        max-height="200"
        style="margin-left: 40px;"
        ></v-img>   </router-link>
       </v-toolbar-title> 
    
       <v-spacer></v-spacer>    
      <router-link to="/ofertas" style="text-decoration: none; color: black;">
       <v-btn style="font-size: 18px;">Ofertas</v-btn>
      </router-link>

      <router-link to="/about" style="text-decoration: none; color: black;">
       <v-btn style="font-size: 18px;">¿Quiénes somos?</v-btn>
      </router-link>

      <router-link to="/ayuda" style="text-decoration: none; color: black;">
       <v-btn style="margin-right: 50px; font-size: 18px; ">¿Necesitas ayuda?</v-btn>    
      </router-link>

      <!-- Iconos usuario y carrito -->
       <v-spacer></v-spacer>
    <v-menu>
      <template v-slot:activator="{ props }" >
          <v-btn  style="margin-right: 50px;" icon  v-bind="props">
          <v-tooltip  activator="parent" location="bottom"> Acceder </v-tooltip>      
          <v-icon style="font-size: 35px;"> mdi-account-circle</v-icon>
          </v-btn>
        </template>
        <v-list>
        <v-list-item
          v-for="(item, index) in items"
          :key="index"
          :value="index"     
          class="bg-pink-lighten-5"    >
          <v-list-item-title   @click="url(item.ruta)">{{ item.title }}</v-list-item-title>
        </v-list-item>
      </v-list>
    </v-menu>
          <v-btn icon style="margin-right: 50px;">
            <v-tooltip  activator="parent" location="bottom"> Ver carrito </v-tooltip>
            <v-icon style="font-size: 35px;">mdi-cart </v-icon>
          </v-btn>
    </v-app-bar>

    <!-- menú despegable login -->
    <v-navigation-drawer
      v-model="drawer" style="margin-top: 20px;" class="bg-pink-lighten-5">
      <v-btn v-for="(item,index) in rutas" :key="index"
        block
        color="primary"
        variant="tonal"
        class="d-block  my-1 font-weight-black"
        @click="url(item.ruta)"
       > 
        <span>{{ item.nombre}}</span> 
      </v-btn>
    </v-navigation-drawer>

    <v-main class="bg-pink-lighten-5">
      <slot></slot>
    </v-main>
  </v-app>
</template>

<script>
  export default {

    data: () => ({ drawer: false, 
      items: [
        { title: 'Log in', ruta:'/login'},
        { title: 'Sign in', ruta:"/signin" },
      ],
      rutas: [
        {nombre: 'home', ruta: "/"},
        {nombre: 'Accesorios', ruta: "/accesorios"},
        {nombre: 'ojos', ruta: '/ojos'},
        {nombre: 'piel', ruta: "/piel"},
        {nombre: 'Brochas', ruta: '/brochas'},
        {nombre: 'labios', ruta: "/labios"},
        
    ],
    computed: {
    username() {
      return this.$store.state.username;
    },
  },
      loaded: false,
      loading: false,
     }),

      methods: {
      url(ruta){
            this.$router.push(ruta)
        },

    },
  }
</script>