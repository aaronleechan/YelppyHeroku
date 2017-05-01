class AddPriceRangeToResturants < ActiveRecord::Migration[5.0]
  def change
    add_column :resturants, :price_range, :integer # some comment
  end
end
