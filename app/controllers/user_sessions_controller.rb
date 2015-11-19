class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]
  
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_to user_path(current_user), notice: "Logged in as: #{@user.first_name}!"
    else
      flash.now[:alert] = 'Login failed'
      redirect_to root_path
    end
  end

  def destroy
    logout
    redirect_to(:tasks, notice: 'Logged out!')
  end
end