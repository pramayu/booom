class SessionsController < ApplicationController
  before_action :redirect_signed_in_user_on_authentication, only: [:new, :create]
  layout "authentication"
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        sign_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        current_cart.update user_id: current_user.id
        redirect_to dashboard_url, success: "Welcome to your account center"
      else
        message = "Account not activated."
        message += "Check your email for the activation link."
        redirect_to email_active_url #(this time)
      end
    else
      redirect_to sign_in_url, danger: "Invalid Email or Password" 
    end
  end

  def destroy
    sign_out if signed_in?
    redirect_to root_url
  end

  private
  def redirect_signed_in_user_on_authentication
    if signed_in?
      redirect_to dashboard_url
    end
  end  
end
