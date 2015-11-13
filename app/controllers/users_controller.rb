class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

      if @user.save
        # send email to user upon account creation
        puts UserMailer.created_account(@user).deliver_later
        redirect_to tasks_path, notice: "Welcome aboard, #{@user.firstname}!"
        session[:user_id] = @user.id
      else
        render :new
      end
  end

  def show
  end

  def edit
  end

  def destroy
  end

  protected

  def user_params
    params.require(:user).permit(:email, :firstname, :lastname, :password, :skills, :bio, :birth_date, :phone, :city, :profilr_image_url)
  end
end
