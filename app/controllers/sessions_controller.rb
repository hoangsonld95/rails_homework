class SessionsController < ApplicationController
  def new
  end
  def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
          log_in user
<<<<<<< HEAD
          params[:session][:remember_me] == '1' ? remember(user) : forget(user)
          redirect_back_or user# Log the user in and redirect to the user's show page.
=======
          redirect_to user# Log the user in and redirect to the user's show page.
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
          else
          flash.now[:danger] = 'Invalid email/password combination'# Create an error message.
          render 'new'
      end
  end
  
  def destroy
<<<<<<< HEAD
      log_out if logged_in?
=======
      log_out
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
      redirect_to root_url
  end
end
