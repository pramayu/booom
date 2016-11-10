class CreateFreepis < ActiveRecord::Migration
  def change
    create_table :freepis do |t|
      t.string :cacaca
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
