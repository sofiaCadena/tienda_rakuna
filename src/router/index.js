import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue';
import AccesoriosView from '../views/AccesoriosView.vue';
import PielFacial from '../views/PielFacial.vue';
import Ojos from '../views/OjosView.vue';
import Brochas from '../views/BrochasView.vue';
import Labios from '../views/LabiosView.vue';
import AboutView from '../views/AboutView.vue';
import OfertasView from '../views/OfertasView.vue';
import HelpView from '../views/HelpView.vue';
import TiendasView from '../views/TiendasView.vue';
import LoginView from '../views/LoginView.vue';
import SiginView from '../views/SiginView.vue';


const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'Somos',
    component: AboutView
  },
  {
    path: '/ayuda',
    name: 'Help',
    component: HelpView
  },
  {
    path: '/tiendas',
    name: 'Tienda',
    component: TiendasView
  },
  {
    path: '/signin',
    name: 'SignIn',
    component: SiginView
  },
  {
    path: '/ofertas',
    name: 'ofertas',
    component: OfertasView
  },
  {
    path: '/login',
    name: 'Login',
    component: LoginView
  },
  {
    path: '/accesorios',
    name: 'Accesorios',
    component: AccesoriosView
  },
  {
    path: '/piel',
    name: 'piel',
    component: PielFacial
  },
  {
    path: '/ojos',
    name: 'Ojos',
    component: Ojos
  },
  {
    path: '/brochas',
    name: 'Brochas',
    component:Brochas
  },
  {
    path: '/labios',
    name: 'Labios',
    component:Labios
  },

]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
