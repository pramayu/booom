class UsersController < ApplicationController

  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :signed_in_user, only: [:edit, :update, :destroy]
  before_action :only_admin, only: [:delete_user]
  before_action :find_user, only: [:delete_user]
  layout "authentication", only: [:sign_up]
  def sign_up
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      if @user.reviewer?
        @user.send_reviewer_email
      else
        @user.send_activation_email
      end
      #sign_in @user
      redirect_to email_active_url #(for this time)
    else
      render 'sign_up'
    end
  end

  # def edit

  # end
  #

  def delete_user
    @user.destroy
    respond_to do |format|
      format.js
    end
  end

  def update
    @usr = User.find(params[:id])
    if @usr.update(user_params)
      redirect_to dashboard_path
    else
      @user.errors.full_messages
      redirect_to personal_url
    end
  end

  def destroy
    # skip destroy & admin action
  end

  def authenticate?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_n, :last_n, :company, :country_id, :state_id, :city, :postal_code, :avatar, :show_country, :freelance_av, :skill_user, :email, :password, :password_confirmation, :temp_password, :leader, :admin, :reviewer, :team_id, ourstore_attributes: [:id, :description, :header, :website], social_network_attributes: [:id, :user_id, :behance, :deviant, :digg, :facebook, :dribbble, :flickr, :github, :linkedin, :youtube, :twitter, :tumblr])
  end

  def only_admin
    redirect_to dashboard_path if !current_user.admin?
  end

  def find_user
    @user = User.find(params[:id])
  end

  # def find_user
  # 	@user = User.find(params[:id])
  # end
end
