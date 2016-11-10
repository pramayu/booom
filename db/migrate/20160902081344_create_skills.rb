class CreateSkills < ActiveRecord::Migration[5.0]
  def up
    create_table :skills do |t|
      t.string :name

      t.timestamps
    end
  end
end
