class AddDependencyIdToThemes < ActiveRecord::Migration
  def change
    add_reference :themes, :dependency, index: true, foreign_key: true
  end
end
