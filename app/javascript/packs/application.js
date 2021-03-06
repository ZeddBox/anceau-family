// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import "stylesheets/application"

import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.min.js'
import Hello from '../packs/components/hello.vue'
import Dropdown from '../packs/components/dropdown.vue'
import Profil from '../packs/components/profil.vue'

Vue.use(TurbolinksAdapter)

Vue.component('app', Hello)
Vue.component('dropdown', Dropdown)
Vue.component('profil', Profil)

document.addEventListener('turbolinks:load', () => {
  window.onload = function () {
    
    const app = new Vue({
      el: '#main'
    })
  }
})
