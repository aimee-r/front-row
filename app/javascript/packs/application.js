// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("trix")
require("@rails/actiontext")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------


// External imports
import "bootstrap";
import $ from "jquery"
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

import { initFlatpickr } from "../components/flatpickr";



import "controllers"
import { countdownTimer } from '../components/countdown.js'
import { initChatroomCable } from '../channels/chatroom_channel.js'

// nav bar

const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const searchbar = document.querySelector('.form-field');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white');
        searchbar.style.display = 'none';
      } else {
        navbar.classList.remove('navbar-lewagon-white');
        searchbar.style.display = 'block';
      }
    });
  }
}

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initFlatpickr();

  initUpdateNavbarOnScroll();
   if (document.getElementById("event-start-time")) {
    countdownTimer();
   }
   initChatroomCable();

   $('#form-field').on('keypress', e => {
    if (e.keyCode == 13) {
        return false;
    }
});
});

require("trix")
require("@rails/actiontext")
