class AddPriceExtToGraphics < ActiveRecord::Migration[5.0]
  def change
    add_column :graphics, :price_ext, :decimal
    add_reference :graphics, :team, foreign_key: true, index: true
    add_reference :revrests, :graphic, foreign_key: true, index: true

    add_column :fonts, :price_ext, :decimal
    add_reference :fonts, :team, foreign_key: true, index: true
    add_reference :revrests, :font, foreign_key: true, index: true

    add_column :t3ds, :price_ext, :decimal
    add_reference :t3ds, :team, foreign_key: true, index: true
    add_reference :revrests, :t3d, foreign_key: true, index: true

    add_column :courses, :price_ext, :decimal
    add_reference :courses, :team, foreign_key: true, index: true
    add_reference :revrests, :course, foreign_key: true, index: true

    add_column :videofxes, :price_ext, :decimal
    add_reference :videofxes, :team, foreign_key: true, index: true
    add_reference :revrests, :videofx, foreign_key: true, index: true

  end
end
