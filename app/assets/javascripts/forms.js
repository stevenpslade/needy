$(document).on("page:change", function() {

// show neew task form 
  $('body').on('click', '#task-form', function() {
    $('#post-task').animate({width: 'toggle'});
    $('main').toggle();
    // $('main').fadeToggle('linear');
    // $('.show-form').colorbox();
  });

  // Show filter-tasks form
   $('body').on('click', '#show-filter-by', function() {
    $('#filter-by-form').animate({width: 'toggle'});
    $('main').toggle();
  });
  
// show signup form
  $('body').on('click', '.register', function() {
    $('#signup-form').animate({width: 'toggle'});
    $('main').toggle();
  });

// show login form
  $('body').on('click', '.show-login', function() {
    $('#login-form').animate({width: 'toggle'});
    $('main').fadeToggle('linear');
  });

// show review form
  $('body').on('click', '#show-review', function() {
    $('#review').animate({height: 'toggle'});
  });

// Materialize datepicker
  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 100 // Creates a dropdown of 15 years to control year
  });

  // show user tasks
  $('body').on('click', '#show-user-tasks', function() {
    $('#user-tasks').animate({width: 'toggle'});
    $('main').toggle();
  });

  // show Task index
  $('body').on('click', '#show-all-needs', function() {
    $('#needs').animate({width: 'toggle'});
    $('main').toggle();
  });

  // show users index
  $('body').on('click', '#show-users', function() {
    $('#users').animate({width: 'toggle'});
    $('main').toggle();
  });

  // change nav button color on click
  $('#slide-out').on('click', 'div', function() {
    $(this).toggleClass('nav-change-color');
  });

  // show info on landing page
  // $('body').on('click', ".show-info", function() {
  //   $('.landing-info').animate({height: 'toggle'});
  //   $('.show-info').toggle();
  //   $('.hide-form').toggle();
  // });

  
 
});