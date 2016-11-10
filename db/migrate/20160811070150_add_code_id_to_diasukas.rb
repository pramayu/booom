class AddCodeIdToDiasukas < ActiveRecord::Migration
  def change
    add_reference :diasukas, :code, index: true, foreign_key: true
  end
end
