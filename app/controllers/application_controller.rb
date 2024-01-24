class ApplicationController < ActionController::Base
    before_action :authenticate_user!, unless: :pages_controller?

  private
  def pages_controller?
    controller_name == 'pages' && action_name == 'home'
  end
  
  def authenticate_user!
    unless user_signed_in?
      redirect_to root_path, alert: "You must be signed in to access this page."
    end
  end
end
