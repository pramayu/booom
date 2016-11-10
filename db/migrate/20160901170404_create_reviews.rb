class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.references :user, foreign_key: true, index: true
      t.references :theme, foreign_key: true, index: true
      t.references :code, foreign_key: true, index: true
      t.references :font, foreign_key: true, index: true
      t.references :videofx, foreign_key: true, index: true
      t.references :course, foreign_key: true, index: true
      t.references :t3d, foreign_key: true, index: true
      t.references :graphic, foreign_key: true, index: true


      t.timestamps
    end
  end
end
