class AddIndustryIdToGraphics < ActiveRecord::Migration
  def change
    add_reference :graphics, :industry, index: true, foreign_key: true
  end
end
