# Clase controller para las sessiones de los usuarios de la app.
class SessionsController < ApplicationController
  def new
    # To render a form to create a new session.
  end

  def create
    # To recive params from <new_sessions_path> and <def new> to create a session variable.
    # To log in the user to the app.
    # To re-direct the user to the user's page.
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:id] = @user.id
      redirect_to @user
    else
      render 'statics#welcome '
    end
  end

  def destroy
    # To delete the session and log out the user.
    redirect_to root_path
    session.delete(:id)
  end
end
