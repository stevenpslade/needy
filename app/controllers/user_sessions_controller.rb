class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]
  
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(:tasks, notice: "Logged in as: #{@user.first_name}!")
    else
      flash.now[:alert] = 'Login failed'
      render action: 'tasks/index'
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Logged out!')
  end
end