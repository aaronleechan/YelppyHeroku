class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
    	t.string 	:name
    	t.text		:ingredient
    	t.string	:price
    	t.integer	:value
    	t.integer	:footrating
    	t.integer	:cookingTime
    end
  end
end
