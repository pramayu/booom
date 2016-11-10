class RelationshipsController < ApplicationController
  def follow_user
  	@user = User.find(params[:id])
  	if current_user.follow @user.id
      create_notification current_user, @user
  		respond_to do |format|
  			format.html {redirect_to store_path(@user)}
  			format.js
  		end
  	end
  end

  def unfollow_user
  	@user = User.find(params[:id])
  	if current_user.unfollow @user.id
  		respond_to do |format|
  			format.html {redirect_to store_path(@user)}
  			format.js
  		end
  	end
  end

  private 

  def create_notification(user1, user2)
    Notification.create(user_id: user2.id,
                        notified_by_id: user1.id,
                        notice_type: 'follow')
  end
end
