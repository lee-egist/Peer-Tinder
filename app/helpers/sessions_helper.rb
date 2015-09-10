module SessionsHelper

  def auth_login(user)
  session[:user_id] = user.id
  end

  def auth_logged_in?
    !!session[:user_id] && !!auth_current_user
  end

  def auth_logout
    session.destroy
  end

  def auth_current_user
    return nil unless session[:user_id]
    @current_user ||=
    begin
       User.find(session[:user_id])
    rescue ActiveRecord::RecordNotFound
      auth_logout
      @current_user = nil
    end
  end
end
