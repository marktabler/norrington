class Admin::UsersController < ApplicationController

  before_filter :admin_required
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    return redirect_to admin_users_path
  end

  def create
    @user = User.create(user_params)
    return redirect_to admin_users_path
  end

  def promote
    @user = User.find(params[:id])
    @user.update_attribute(:admin, true)
    return redirect_to admin_users_path
  end

  def demote
    @user = User.find(params[:id])
    @user.update_attribute(:admin, false) unless @user == current_user
    return redirect_to admin_users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy unless @user == current_user
    return redirect_to admin_users_path
  end
  
  private

  def user_params
     params.require(:user).permit(:name, :pincode)
  end

end
