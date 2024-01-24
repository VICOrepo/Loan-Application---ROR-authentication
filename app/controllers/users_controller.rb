class UsersController < ApplicationController
  before_action :authenticate_user!  
 
  def index
    @users = User.all
  end
  
 
  def destroy 
    @user = User.find(params[:id])

    if @user.loans.any?
        redirect_to users_path, flash: { alert: '
        If a user has an active loan request, they cannot be deleted.' }
    else
        @user.destroy
        redirect_to users_path, flash: { notice: 'User has been successfully deleted.' }
    end
end

def make_admin
  @user = User.find(params[:id])
  @user.add_role(:admin) unless @user.has_role?(:admin)
  redirect_to users_path, notice: 'User is now an admin.'
end

end
