class Pusher::AuthController < ApplicationController
  skip_before_action :require_login

  def create
    if current_user
      response = Pusher[params[:channel_name]].authenticate(params[:socket_id])
      render :json => response
    else
      render :text => "Forbidden", :status => '403'
    end
  end
end
