class AddCodeIdToRevrests < ActiveRecord::Migration[5.0]
  def change
    add_reference :revrests, :code, foreign_key: true, index: true
  end
end
