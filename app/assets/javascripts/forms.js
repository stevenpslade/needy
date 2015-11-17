$(document).on("page:change", function() {


  $('body').on('click', '#task-form', function() {
    $('#post-task').animate({width: 'toggle'});
    $('main').toggle();
    // $('.show-form').colorbox();
  });


// Materialize datepicker
  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 100 // Creates a dropdown of 15 years to control year
  });
  
});