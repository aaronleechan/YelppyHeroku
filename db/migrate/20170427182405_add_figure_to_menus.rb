class AddFigureToMenus < ActiveRecord::Migration[5.0]
  def change
  	add_column :menus, :figure, :string
  end
end
