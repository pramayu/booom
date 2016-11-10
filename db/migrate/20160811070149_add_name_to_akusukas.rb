class AddNameToAkusukas < ActiveRecord::Migration
  def change
    add_column :akusukas, :name, :string
  end
end
