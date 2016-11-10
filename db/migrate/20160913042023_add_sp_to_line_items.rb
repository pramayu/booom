class AddSpToLineItems < ActiveRecord::Migration[5.0]
  def change
    add_column :line_items, :support, :boolean, default: false
  end
end
