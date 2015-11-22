class MessagesController < ApplicationController
  # incoming data from pusher.js ajax get
  # data: {message: data.message, chat: chat_id, user_id: gon.current_user.id, sent_at: getTime()}
  def new
    @message = Message.new
    @message.text = params[:message]
    @message.chat_id = params[:chat]
    @message.user_id = params[:user_id].to_i
    @message.sent_at = params[:sent_at]
    @message.save
  end

  def create
  end
end
