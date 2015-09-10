class SessionsController < ApplicationController

  # login form
  def new
    render partial: '/bootcoder/form'
  end

  # create a session from login info
  def create

  end

  # destroy a session
  def destroy
  end

  # registration form
  def new_coder
    redirect_to new_bootcoder_path
  end



end
