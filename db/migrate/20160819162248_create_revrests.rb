class CreateRevrests < ActiveRecord::Migration[5.0]
  def change
    create_table :revrests do |t|
      t.text :content
      t.references :theme, foreign_key: true, index: true

      t.timestamps
    end
  end
end
