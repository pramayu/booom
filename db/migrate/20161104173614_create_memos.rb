class CreateMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :memos do |t|
      t.string :content, limit: 200
      t.references :note, foreign_key: true, index: true

      t.timestamps
    end
  end
end
