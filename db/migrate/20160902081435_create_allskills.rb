class CreateAllskills < ActiveRecord::Migration[5.0]
  def up
    create_table :allskills do |t|
      t.references :skill, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
