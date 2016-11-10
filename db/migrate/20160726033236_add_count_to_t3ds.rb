class AddCountToT3ds < ActiveRecord::Migration
  def change
    add_column :t3ds, :polygons_count, :string, limit: 20
    add_column :t3ds, :vertices_count, :string, limit: 20
  end
end
