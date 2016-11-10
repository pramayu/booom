class AddCodesubIdToCodes < ActiveRecord::Migration
  def change
    add_reference :codes, :codesub, index: true, foreign_key: true
  end
end
