class CreateMaintoitems < ActiveRecord::Migration[5.0]
  def change
    create_table :maintoitems do |t|
      t.references :include, foreign_key: true, index: true
      t.references :toitem, foreign_key: true, index: true

      t.timestamps
    end
  end
end
