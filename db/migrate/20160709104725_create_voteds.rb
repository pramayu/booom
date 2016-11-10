class CreateVoteds < ActiveRecord::Migration
  def change
    create_table :voteds do |t|
      t.references :user, index: true, foreign_key: true
      t.references :theme, index: true, foreign_key: true
      t.integer :value

      t.timestamps null: false
    end
  end
end
