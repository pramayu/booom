class AddLanguageIdToCourses < ActiveRecord::Migration
  def up
    add_reference :courses, :language, index: true, foreign_key: true
  end
end
