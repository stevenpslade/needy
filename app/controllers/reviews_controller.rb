class ReviewsController < ApplicationController

  def index 
    @reviews = Review.where(user_id: current_user.id)
  end

  def new
    @review = @task.reviews.build
    if @review.user_id = @task.user_id
      @review.for_user = @task.needed_id
    else
      @review.for_user = @task.user_id
    end
    @review_user = @review.for_user
  end

  def create
    @review = @task.reviews.build(review_params)
    @review.user_id = current_user.id
    if @review.save 
      redirect_to @task, notice: "Review added"
    else 
      render :new
    end
  end

  protected

  def find_task
    @task = Task.find(params[:task_id])
  end

  def review_params
    params.require(:review).permit(:for_user, :content, :rating)
  end

end
