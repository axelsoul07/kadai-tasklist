class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @task = current_user.tasks.build  # form_for 用
      @tasks = @user.tasks.order('created_at DESC').page(params[:page]).per(10)
    end
  end
end
