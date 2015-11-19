$(document).ready(function() {
  window.pusher = new Pusher('dbc5b3802db9df42fe20', {
    authEndpoint: '/pusher/auth',
    auth: {
      headers: {
        'X-CSRF-Token': $("meta[name=csrf-token]").attr('content')
      }
    }
  });
  
  window.channel = pusher.subscribe('private-chat-room-1');

  channel.bind('client-new-message', function(data) {
    console.log('Message ', data);
  });


  window.sendMessage = function(message) {
    channel.trigger('client-new-message', {message: message, monkey: 'lalala'});
  }
  // alert("loaded pusher.js")
  // put in erb and use as ruby
  // Pusher.trigger('my-channel', 'my-event', {:message => 'hello world'})

});
