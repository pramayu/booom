class AddUserIdToSocialNetworks < ActiveRecord::Migration
  def change
    add_reference :social_networks, :user, index: true, foreign_key: true
  end
end
