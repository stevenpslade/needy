class TasksController < ApplicationController

  skip_before_filter :require_login, only: [:index, :new, :create]

  def index
    @tasks = Task.all
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
    gon.watch.tasks = @task
    # @request allows for the form_for to allow the request parameter
    @request = Request.new
    # @review allos for the form_for to allow the review parameter
    @review = Review.new
  end

  def update
    if params[:task] == nil
      @task = Task.find(params[:id])
      params.permit(:needed_id)
      @task.needed_id = params[:needed_id]
      if @task.save
        redirect_to task_path(params[:id]), notice: "You have accepted someone to do your bidding!"
      else
        render :show
      end
    else
        
    end
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
