class MessagesController < ApplicationController
  def new
    @message = Message.new
    @message.text = params[:message]
    @message.chat_id = params[:chat]
    @message.save
  end

  def create
  end
end
