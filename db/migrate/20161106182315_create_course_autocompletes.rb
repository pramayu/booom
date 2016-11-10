class CreateCourseAutocompletes < ActiveRecord::Migration[5.0]
  def change
    create_table :course_autocompletes do |t|
      t.string :term
      t.integer :popularity

      t.timestamps
    end
  end
end
