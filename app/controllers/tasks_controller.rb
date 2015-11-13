class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path, notice: "New Task Created!"
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

  def task_params
    params.require(:task).permit(:needed_id, :needy_confirmation_completion, :needed_confirmation_completion, :location, :decription, :estimated_duration, :category, :due_date, :compensation, :image_url, :video_url, :difficulty)
  end

end
