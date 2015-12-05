// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require social-share-button
//= require bootstrap/modal
//= require turbolinks
//= require_tree .

$.fn.ticker.defaults = {
  random:        false, // Whether to display ticker items in a random order
  itemSpeed:     3000,  // The pause on each ticker item before being replaced
  cursorSpeed:   50,    // Speed at which the characters are typed
  pauseOnHover:  true,  // Whether to pause when the mouse hovers over the ticker
  finishOnHover: true,  // Whether or not to complete the ticker item instantly when moused over
  cursorOne:     '_',   // The symbol for the first part of the cursor
  cursorTwo:     '-',   // The symbol for the second part of the cursor
  fade:          true,  // Whether to fade between ticker items or not
  fadeInSpeed:   600,   // Speed of the fade-in animation
  fadeOutSpeed:  300    // Speed of the fade-out animation
};
