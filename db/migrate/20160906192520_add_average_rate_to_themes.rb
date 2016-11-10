class AddAverageRateToThemes < ActiveRecord::Migration[5.0]
  def change
    add_column :themes, :average_rate, :decimal, index: true
    add_column :codes, :average_rate, :decimal, index: true
    add_column :graphics, :average_rate, :decimal, index: true
    add_column :t3ds, :average_rate, :decimal, index: true
    add_column :videofxes, :average_rate, :decimal, index: true
    add_column :courses, :average_rate, :decimal, index: true
    add_column :fonts, :average_rate, :decimal, index: true
  end
end
