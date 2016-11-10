class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messagereviewers do |t|
      t.references :team, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true
      t.text :content

      t.timestamps
    end
  end
end
