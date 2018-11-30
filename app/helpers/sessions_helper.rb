module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    if User.find_by(id: session[:user_id])
      return true
    end
  end

  def admin?
    unless current_user.admin == true || current_user.name == "admin"
      return false
    else
      return true
    end
  end

  # Logs out the current user.
  def log_out
    session.delete(:user_id)
    @current_user = nil
    if @cart
      @cart.destroy
    end
  end
end
