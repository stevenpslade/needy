class ReviewsController < ApplicationController

  def index 
    @reviews = Review.where(user_id: current_user.id)
  end

  def new
    # Do we want the users to be able to access a /reviews/new?  If not, then this route is not necessary.
    # The review form on the tasks/show/:id page still shows up and passes the params to the reviews#create,
    # so it doesn't seem necessary to have a path dedicated to a creating a review

    # @review = @task.reviews.build
    # if @review.user_id == @task.user_id
    #   @review.for_user = @task.needed_id
    # else
    #   @review.for_user = @task.user_id
    # end
    #   @review_user = @review.for_user
  end

  def create
    @review = Review.new(review_params) 
    if @review.save
      @task = Task.where(id: @review.task_id) 
      @for_user = User.where(id: @review.for_user)
      # if @for_user[0].id == @task[0].user_id
      #   @for_user[0].needed_rating += @review.user_rating
      #   @for_user[0].save
      # else
      #   @for_user[0].needy_rating += @review.user_rating
      #   @for_user[0].save
      # end
      redirect_to tasks_path, notice: "Review added"
    else 
      redirect_to tasks_path, alert: "Review unsuccessful!"
    end
    byebug
  end

  protected

  def find_task
    @task = Task.find(params[:task_id])
  end

  def review_params
    params.require(:review).permit(:user_id, :task_id, :for_user, :content, :user_rating)
  end

end
