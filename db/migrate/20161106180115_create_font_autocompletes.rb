class CreateFontAutocompletes < ActiveRecord::Migration[5.0]
  def change
    create_table :font_autocompletes do |t|
      t.string :term
      t.integer :popularity

      t.timestamps
    end
  end
end
