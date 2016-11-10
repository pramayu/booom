class AddWhoHaveToLineItems < ActiveRecord::Migration[5.0]
  def change
    add_column :line_items, :who_have, :string
  end
end
