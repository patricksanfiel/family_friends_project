// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

//= require popper
//= require rails-ujs
//= require_tree .

var OFFSET_TOP = 50;

// $(function(){
//   $(window).scroll(function () {
//     if (typeof $('#home') !== undefined) {
//       if ($('.navbar').offset().top > OFFSET_TOP) {
//         $('.scrolling-navbar').addClass('top-nav-collapse');
//       }else{
//         $('.scrolling-navbar').removeClass('top-nav-collapse');
//       }
//     }else {
//       console.log('fff')
//       $('.scrolling-navbar').removeClass('top-nav-collapse');
//     }
//   });
  
// })

document.addEventListener('DOMContentLoaded', function(){
  setTimeout(function(){
    document.querySelector('.close').click()
  }, 2500);
  
})
