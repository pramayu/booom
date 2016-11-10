class ContactsController < ApplicationController
  before_action :signed_in_user

  def new
    @user = User.find(params[:user_id])
    @contact = Contact.new
  end
  def create
    @user = User.find(params[:user_id])
    @contact = Contact.new(params_contact)
    ContactMailer.contact_me(@contact, current_user).deliver_now
    contact_notif(@user, current_user)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end

  end

  private

  def contact_notif(user, cuser)
    Notification.create(user_id: user.id,
                        notified_by_id: cuser.id,
                        notice_type: 'send')
  end

  def params_contact
    params.require(:contact).permit(:name, :email, :subject, :content)
  end

end
