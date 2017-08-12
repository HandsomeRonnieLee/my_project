import Vue from 'vue'
import Router from 'vue-router'
import VueResource from 'vue-resource'
import App from '@/App'
import HeaderComponent from '@/components/header'
import FooterComponent from '@/components/footer'
import MainComponent from '@/components/main'
import DetailComponent from '@/components/detail'
import OrderComponent from '@/components/order'
import CollectionComponent from '@/components/customerCollection'
import RegisterComponent from '@/components/register'
import LoginComponent from '@/components/login'
import CustomerComponent from '@/components/customer'
import UserComponent from '@/components/user'
import UserstartComponent from '@/components/userStart'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'main',
      component:MainComponent
       
    },
    {
      path: '/detail/:pid',
      name: 'detail',
      component:DetailComponent
    },
    {
      path: '/order',
      name: 'order',
      component:OrderComponent
    },
    {
      path: '/collection',
      name: 'collection',
      component:CollectionComponent
    },
    {
      path: '/customer',
      name: 'customer',
      component:CustomerComponent
    },
    {
      path: '/user',
      name: 'user',
      component:UserComponent,
          children:[{
            path:'/',
            name:'userStar',
            component:UserstartComponent
          },
          {
            path: '/register',
            name: 'register',
            component:RegisterComponent
          },
          {
            path: '/login',
            name: 'login',
            component:LoginComponent
          }
      ]
    },

  ]
});
