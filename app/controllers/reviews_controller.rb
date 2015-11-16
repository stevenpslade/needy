class ReviewsController < ApplicationController
  def new
    @reviews = Review.new
  end

  def create
    params[:review][:user_id] = current_user.id
    @review = Review.new(review_params)
  
    if @review.save
      redirect_to reviews_path, notice: "New review Created!"
    else
      render :new
    end
  end

  def show
    @review = review.find(params[:id])
    # @request allows for the form_for to allow the request parameter
    @request = Request.new
  end

  def edit
  end

  def destroy
  end

  protected

  def review_params
    params.require(:review).permit(:user_id, :task_id, :content, :for_user)
  end


end
