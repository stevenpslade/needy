$(document).ready(function() {

  current_name = gon.current_user.first_name + " " + gon.current_user.last_name
  other_name = gon.other_user.first_name + " " + gon.other_user.last_name
  debugger
  chat_id = gon.chat[0].id
  // chat_id = 1

  function getTime() {
    d = new Date();
    return d.getHours() + ":" + (d.getMinutes()<10?'0':'') + d.getMinutes()
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

  function appendMessage(image_url, name, text) {
    $('<div>').addClass('chat-message clearfix')
      .append('<img src="'+ image_url +'" alt="" width="32" height="32">')
      .append($('<div>').addClass('chat-message-content clearfix')
        .append($('<span>').addClass('chat-time').html(getTime()))
        .append($('<h5>').text(name))
        .append($('<p>').text(text)))
      .appendTo($('.chat-history'))
      $('<hr>').appendTo($('.chat-history'));
      $(".chat-history").scrollTop($(".chat-history")[0].scrollHeight);
  }

  channel.bind('client-new-message', function(data) {
    appendMessage(gon.other_user.profile_image_url, other_name, data.message);
  });


  sendMessage = function(message) {
    channel.trigger('client-new-message', {message: message});
    $.ajax({
      dataType: "text",
      url: '/messages/new',
      method: 'GET',
      data: {message: message, chat: chat_id, user_id: gon.current_user.id, sent_at: getTime()},
      success:  function () {
        appendMessage(gon.current_user.profile_image_url, current_name, message);
      $('#chatMsg').val("");
      }
    });
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
