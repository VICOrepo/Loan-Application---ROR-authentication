class UsersController < ApplicationController
  before_action :authenticate_user!  
 
  def index
    @users = User.all
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: 'User was successfully deleted.'
  end

  def make_admin
    @user = User.find(params[:id])
    @user.update(user_role: 2) unless @user.admin?
    redirect_to users_path, notice: 'User is now an admin.'
  end
end
