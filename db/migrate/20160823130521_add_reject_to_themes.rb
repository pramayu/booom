class AddRejectToThemes < ActiveRecord::Migration[5.0]
  def up
    add_column :themes, :reject, :boolean, default: false
    add_column :codes, :reject, :boolean, default: false
    add_column :graphics, :reject, :boolean, default: false
    add_column :videofxes, :reject, :boolean, default: false
    add_column :fonts, :reject, :boolean, default: false
    add_column :t3ds, :reject, :boolean, default: false
    add_column :courses, :reject, :boolean, default: false
  end
end
