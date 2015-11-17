class RequestsController < ApplicationController

  def create
    params[:request][:user_id] = current_user.id
    task_id = params[:request][:task_id]
    @request = Request.new(request_params)
  
    if @request.save
      redirect_to task_path(task_id), notice: "You have submitted your request!"
    else
      redirect_to task_path(task_id), alert: "Unsuccessfull request submission!"
    end
  end

  def destroy
  end

  protected

  def request_params
    params.require(:request).permit(:user_id, :task_id, :comment)
  end
end
