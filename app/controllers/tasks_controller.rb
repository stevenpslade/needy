class TasksController < ApplicationController

  skip_before_filter :require_login, only: [:index, :new, :create]

  def index
    @tasks = Task.all
  end

  def user_tasks
    @user_tasks = Task.where(user_id: current_user.id)
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
    byebug
    @task = Task.find(params[:id])
    # the APPROVE REQUEST portion
    if params[:task] == nil
      params.permit(:needed_id)
      @task.needed_id = params[:needed_id]
      if @task.save
        redirect_to task_path(params[:id]), notice: "You have accepted someone to do your bidding!"
      else
        render :show
      end    
    # TASK COMPLETE
    elsif params[:task][:needy_confirm_completion]
      params.permit(:needy_confirm_completion)
      @task.needy_confirm_completion = params[:task][:needy_confirm_completion]
      if @task.save
        redirect_to task_path(params[:id]), notice: "Task marked as complete!"
      else
        redirect_to task_path(params[:id]), alert: "Error! 'Task complete' unsuccessful"
      end
    #  TASK COMPLETE
    elsif params[:task][:needed_confirm_completion]
      params.permit(:needed_confirm_completion)
      @task.needed_confirm_completion = params[:task][:needed_confirm_completion]
      if @task.save
        redirect_to task_path(params[:id]), notice: "Task marked as complete!"
       else
        redirect_to task_path(params[:id]), alert: "Error! 'Task complete' unsuccessful"
      end
    else
      byebug
      redirect_to task_path(params[:id]), alert: "Error, something went wrong!" 
    end
  end

  def edit
  end

  def destroy
  end

  protected

  def task_params
    params.require(:task).permit(:user_id, :needed_id, :needy_confirm_completion, :needed_confirm_completion, :location, :description, :estimated_duration, :category, :due_date, :title, :compensation, :image_url, :video_url, :difficulty)
  end

end
