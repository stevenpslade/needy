$(document).on("page:change", function() {

// show neew task form 
  $('body').on('click', '#task-form', function() {
    $('#post-task').animate({width: 'toggle'});
    $('main').fadeToggle('linear');
    // $('.show-form').colorbox();
  });

// show login form
  $('body').on('click', '#show-login', function() {
    $('#login-form').animate({width: 'toggle'});
    $('main').fadeToggle('linear');
  });

// show review form
  $('body').on('click', '#show-review', function() {
    $('#review').toggle().SlideDown('slow');
  });

// Materialize datepicker
  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 100 // Creates a dropdown of 15 years to control year
  });
  
});