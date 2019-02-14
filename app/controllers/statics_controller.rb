# Clase controller para la pagina estatica de la app.
class StaticsController < ApplicationController
  def welcome
    # Render a Welcome page
    # If not logged, it prompts the user to log-on or sign-up
    # if log-on, it redirects the user to the page show
  end
end
