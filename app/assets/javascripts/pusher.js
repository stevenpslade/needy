$(document).ready(function() {

  current_name = gon.current_user.first_name + " " + gon.current_user.last_name
  other_name = gon.other_user.first_name + " " + gon.other_user.last_name

  var pusher = new Pusher('dbc5b3802db9df42fe20', {
    authEndpoint: '/pusher/auth',
    auth: {
      headers: {
        'X-CSRF-Token': $("meta[name=csrf-token]").attr('content')
      }
    }
  });
  
  var channel = pusher.subscribe('private-chat-room-1');

  channel.bind('client-new-message', function(data) {
    $('<div>').addClass('chat-message clearfix')
      .append('<img src="http://gravatar.com/avatar/2c0ad52fc5943b78d6abe069cc08f320?s=32" alt="" width="32" height="32">')
      .append($('<div>').addClass('chat-message-content clearfix')
        .append($('<span>').addClass('chat-time').html("13:53"))
        .append($('<h5>').text(other_name))
        .append($('<p>').text(data.message)))
      .appendTo($('.chat-history'))
      $('<hr>').appendTo($('.chat-history'));
  });


  sendMessage = function(message) {
    channel.trigger('client-new-message', {message: message});
    $('<div>').addClass('chat-message clearfix')
      .append('<img src="http://gravatar.com/avatar/2c0ad52fc5943b78d6abe069cc08f320?s=32" alt="" width="32" height="32">')
      .append($('<div>').addClass('chat-message-content clearfix')
        .append($('<span>').addClass('chat-time').html("13:53"))
        .append($('<h5>').text(current_name))
        .append($('<p>').text(message)))
      .appendTo($('.chat-history'))
      $('<hr>').appendTo($('.chat-history'))
      $('#chatMsg').val("");
  }

  // Pusher.trigger('my-channel', 'my-event', {:message => 'hello world'})
  $('#chatBox').on('submit', function(e) {
    e.preventDefault();
    msg = $('#chatMsg').val();
    if (msg !== "") {
      sendMessage(msg);
    }
  });

});
