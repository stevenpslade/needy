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

//= require application
//= require forms
//= require maps
//= require pusher

$(function() {


  if ($('#alert').get(0)) {    
    // alert($('#alert').text()); // throw an alert() with the div's text
    Materialize.toast($('#alert').text(), 4000, 'rounded alert')
  }

  if ($('#notice').get(0)) {    
    // alert($('#alert').text()); // throw an alert() with the div's text
    Materialize.toast($('#notice').text(), 4000, 'rounded notice')
  }
  
  $(".button-collapse").sideNav();

// When you click on the 'Write a Review', the hidden form appears so you can leave a comment
  
// $('write-review-btn-div button').on('click', function(e){
//   $('.dom-removed-element').addClass('show-review-form');
//   $('write-review-btn-div').addClass('dom-removed-element');
//   e.preventDefault();
  
// })

 // $('#start').on('click', function() {
 //    $('.task-icons').hide();
 //    $('.task-timer').show();
 // })
 // $('.need-me-btn a').on('click', function(){
 //  var task_id = $(this).data('id');
 // });

});