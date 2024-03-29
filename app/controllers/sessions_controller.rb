class SessionsController < ApplicationController
  skip_before_action :logged_in?

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect them to the user's show page.
      log_in(user)
      redirect_back fallback_location: '/'
    else
      # Create an error message.
      flash[:notice] = 'Invalid username/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
