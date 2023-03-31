<template>
 
<div class="ContenedorRegistro" style="margin-top: 30px;">
  <h2>Registro</h2>
  <form @submit.prevent="registrar">
    <div>
      <v-text-field v-model="nombre"  type="text" id="nombre" required label="Nombre">
      </v-text-field>
    </div>

    <div>
      <v-text-field v-model="apellido" id="apellido"  type="text" required
        label="Apellido"></v-text-field>
    </div>

    <div>
      <v-text-field v-model="correo" id="email"  type="email" required label="Email">
      </v-text-field>
    </div>

    <div>
      <v-text-field v-model="password" id="password"  type="password" required
        label="Contraseña"></v-text-field>
    </div>

    <div class="text-center text-white mt-5">
        <v-btn x-large color="pink" dark type="submit">
          Registrarse
        </v-btn>
    </div>

  </form>

  <p>{{ mensaje }}</p>

</div>
 
</template>

<style>
.ContenedorRegistro {
padding: 3%;
margin-top: 5%;
margin-left: 35%;
width: 30%;
background-color: rgba(234, 234, 234, 0.863);
text-align: center;
box-shadow: 0px 0px 10px 1px #636363;
border-radius: 20px;
}

h2 {
font-size: 30px;
margin-bottom: 5%;
}

</style>

<script>

import axios from 'axios';

export default {
data() {
  return {
    nombre: '',
    apellido: '',
    correo: '',
    password: '',
    mensaje: ''
  };
},
methods: {
  registrar() {
    axios.post('http://localhost:3000/registrar', {
      nombre: this.nombre,
      apellido: this.apellido,
      correo: this.correo,
      password: this.password
    })
      .then(response => {
        this.mensaje = response.data.message;
      })
      .catch(error => {
        console.log(error);
        this.mensaje = 'Error al registrar usuario';
      });
  }
},

datas: () => ({
  loading: null,
}),

watch: {
  loading(val) {
    if (!val) return

    setTimeout(() => (this.loading = false), 2000)
  },
},
};
</script>