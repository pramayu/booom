class AddSellerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :seller, :boolean, default: false
    add_column :users, :admin, :boolean, default: false
    add_column :users, :reviewer, :boolean, default: false
    add_column :users, :job_post, :boolean, default: false
  end
end
