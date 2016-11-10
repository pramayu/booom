class CreateVideoTrailers < ActiveRecord::Migration
  def change
    create_table :video_trailers do |t|
      t.references :videofx, index: true, foreign_key: true
      t.string :trailer

      t.timestamps null: false
    end
  end
end
