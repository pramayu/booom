class CreateVidplugs < ActiveRecord::Migration
  def change
    create_table :vidplugs do |t|
      t.references :aeplugin, index: true, foreign_key: true
      t.references :videofx, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
