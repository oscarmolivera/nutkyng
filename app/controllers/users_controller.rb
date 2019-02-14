# Clase controller para Usuarios de la app.
class UsersController < ApplicationController
  def new
    # To render a form to create a new user.
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    # To recive params of the user's data from <def new> and create a new user.
    # To log in the user to the app.
    # To re-direct the user to the user's page.
    @user = User.create(username: params[:username], password: params[:password])
    redirect_to @user
  end
end
