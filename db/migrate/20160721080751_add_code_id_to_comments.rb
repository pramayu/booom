class AddCodeIdToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :code, index: true, foreign_key: true
  end
end
