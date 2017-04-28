class AddUserResturantIndexToMenus < ActiveRecord::Migration[5.0]
  def change
  	add_reference :menus, :resturant, index: true
  	add_reference :menus, :user,	  index: true
  end
end
