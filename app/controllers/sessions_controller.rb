class SessionsController < ApplicationController

  def create
    u = User.find_by_pincode(params[:pincode])
    if u
      session[:user_id] = u.id
      return redirect_to licenses_path
    else
      return redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    return redirect_to login_path
  end

end
