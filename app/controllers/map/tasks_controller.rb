class Map::TasksController < ApplicationController

  skip_before_filter :require_login, only: [:index, :new, :create, :show]

  def index
    gon.watch.tasks = Task.all
    # render :layout => false
    # @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    params[:task][:user_id] = current_user.id
    @task = Task.new(task_params)
  
    if @task.save
      redirect_to tasks_path, notice: "New Task Created!"
    else
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
    @request = Request.new
  end

  def edit
  end

  def destroy
  end

  protected

  def task_params
    params.require(:task).permit(:user_id, :needed_id, :needy_confirmation_completion, :needed_confirmation_completion, :location, :description, :estimated_duration, :category, :due_date, :title, :compensation, :image_url, :video_url, :difficulty)
  end

end
