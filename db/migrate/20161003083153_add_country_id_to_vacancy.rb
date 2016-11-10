class AddCountryIdToVacancy < ActiveRecord::Migration[5.0]
  def change
    add_reference :vacancies, :country, foreign_key: true, index: true
    add_reference :vacancies, :state, foreign_key: true, index: true
  end
end
