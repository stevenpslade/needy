class WelcomeController < ApplicationController

skip_before_filter :require_login

  def index
    render :layout => false
  end

end
