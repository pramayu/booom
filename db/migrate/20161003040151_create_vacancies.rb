class CreateVacancies < ActiveRecord::Migration[5.0]
  def change
    create_table :vacancies do |t|
      t.string :name
      t.text :description
      t.references :category, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true
      t.string :location

      t.timestamps
    end
  end
end
