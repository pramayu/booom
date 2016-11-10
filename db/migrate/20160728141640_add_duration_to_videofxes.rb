class AddDurationToVideofxes < ActiveRecord::Migration
  def change
    add_column :videofxes, :duration, :string, limit: 10
    add_column :videofxes, :resolution, :string, limit: 10
    add_column :videofxes, :looped_video, :string, limit: 10
    add_column :videofxes, :alpha_channel, :string, limit: 10
    add_column :videofxes, :source_audio, :string, limit: 10
    add_column :videofxes, :file_size, :string, limit: 10
    add_column :videofxes, :require_plugin, :string, limit: 10
    add_reference :videofxes, :encode, index: true, foreign_key: true
    add_reference :videofxes, :latar, index: true, foreign_key: true
  end
end