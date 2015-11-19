$(document).ready(function() {

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
      .append($('<div>').addClass('chat-message-content clearfix')
        .append($('<p>').text(data.message)))
      .appendTo($('.chat-history'))
      $('<hr>').appendTo($('.chat-history'));
  });


  sendMessage = function(message) {
    channel.trigger('client-new-message', {message: message});
    $('<div>').addClass('chat-message clearfix')
      .append($('<div>').addClass('chat-message-content clearfix')
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
