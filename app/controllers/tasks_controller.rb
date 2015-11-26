  class TasksController < ApplicationController

  skip_before_filter :require_login, only: [:index, :new, :create]

  def index
    filter_tasks = Task.search(params[:username], params[:query], params[:difficulty], params[:chronology]).page(params[:page]).per(12)
    @tasks = filter_tasks.where(needed_id: nil)
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
      redirect_to tasks_path, alert: "New Task Created!"
    else
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
    @user = User.find(@task.user_id)
    gon.watch.tasks = @task
    gon.current_user = current_user
    if current_user.id == @task.user_id && @task.needed_id != nil
      @other_user = User.where("id = ? ", @task.needed_id)
    else
      @other_user = User.where("id = ? ", @task.user_id)
    end
    gon.other_user = @other_user[0]
    @chat = Chat.where("task_id = ?", @task.id)
    gon.chat = @chat
    unless @chat.blank?
      @messages = Message.where("chat_id = ?", @chat[0].id)
    end
    # @request allows for the form_for to allow the request parameter
    @request = Request.new
    @all_requests = Request.where(task_id: @task.id)
    # @review allows for the form_for to allow the review parameter
    @review = Review.new
    @user_review = Review.where("task_id = ? AND user_id = ?", @task.id, current_user.id)
  end

  def update
    @task = Task.find(params[:id])
    
    # the APPROVE REQUEST portion
    if params[:task] == nil
      params.permit(:needed_id)
      @task.needed_id = params[:needed_id]
      if @task.save
        @chat = Chat.new({task_id: params[:id]})
        @chat.save
        redirect_to task_path(params[:id]), alert: "You have accepted someone to do your bidding!"
      else
        render :show
      end    
    # TASK COMPLETE by 
    elsif params[:task][:needy_confirm_completion]
      if @task.update(task_params)
        redirect_to task_path(params[:id]), alert: "Task marked as complete!"
      else
        redirect_to task_path(params[:id]), alert: "Error! 'Task complete' unsuccessful"
      end
    #  TASK COMPLETE
    elsif params[:task][:needed_confirm_completion]
      if @task.update(task_params)
        redirect_to task_path(params[:id]), alert: "Task marked as complete!"
       else
        redirect_to task_path(params[:id]), alert: "Error! 'Task complete' unsuccessful"
      end
    elsif params[:task][:incomplete]
      if @task.update(task_params)
        redirect_to task_path(params[:id]), alert: "Task marked as incomplete!"
      else
        redirect_to task_path(params[:id]), alert: "Error! 'Task incomplete' unsuccessful"
      end
    else
      redirect_to task_path(params[:id]), alert: "Error, something went wrong!" 
    end
  end

  def edit
  end

  def destroy
  end

  protected

  def task_params
    params.require(:task).permit(:user_id, :needed_id, :needy_confirm_completion, :needed_confirm_completion, :location, :description, :estimated_duration, :category, :due_date, :title, :compensation, :image_url, :video_url, :difficulty, :incomplete, :incomplete_by)
  end

end
