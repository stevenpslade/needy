$(document).ready(function() {

  current_name = gon.current_user.first_name + " " + gon.current_user.last_name
  other_name = gon.other_user.first_name + " " + gon.other_user.last_name
  chat_id = gon.chat[0].id
  // chat_id = 1

  function getTime() {
    d = new Date();
    return d.getHours() + ":" + d.getMinutes()
  }


  var pusher = new Pusher('dbc5b3802db9df42fe20', {
    authEndpoint: '/pusher/auth',
    auth: {
      headers: {
        'X-CSRF-Token': $("meta[name=csrf-token]").attr('content')
      }
    }
  });
  
  var channel = pusher.subscribe('private-chat-room-' + chat_id);

  channel.bind('client-new-message', function(data) {
    $.ajax({
      dataType: "text",
      url: '/messages/new',
      method: 'GET',
      data: {message: data.message, chat: chat_id, user_id: gon.other_user.id, sent_at: getTime()},
      success:  function () {
        $('<div>').addClass('chat-message clearfix')
      .append('<img src="'+ gon.other_user.profile_image_url +'" alt="" width="32" height="32">')
      .append($('<div>').addClass('chat-message-content clearfix')
        .append($('<span>').addClass('chat-time').html(getTime()))
        .append($('<h5>').text(other_name))
        .append($('<p>').text(data.message)))
      .appendTo($('.chat-history'))
      $('<hr>').appendTo($('.chat-history'));
      }
    });
   ///////////
    // $('<div>').addClass('chat-message clearfix')
    //   .append('<img src="'+ gon.other_user.profile_image_url +'" alt="" width="32" height="32">')
    //   .append($('<div>').addClass('chat-message-content clearfix')
    //     .append($('<span>').addClass('chat-time').html(getTime()))
    //     .append($('<h5>').text(other_name))
    //     .append($('<p>').text(data.message)))
    //   .appendTo($('.chat-history'))
    //   $('<hr>').appendTo($('.chat-history'));
  });


  sendMessage = function(message) {
    channel.trigger('client-new-message', {message: message});
    $('<div>').addClass('chat-message clearfix')
      .append('<img src="'+ gon.current_user.profile_image_url +'" alt="" width="32" height="32">')
      .append($('<div>').addClass('chat-message-content clearfix')
        .append($('<span>').addClass('chat-time').html(getTime()))
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
