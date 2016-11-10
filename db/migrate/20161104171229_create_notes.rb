class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title, limit: 150
      t.string :content, limit: 200
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
