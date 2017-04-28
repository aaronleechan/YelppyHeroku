class AddUserToResturants < ActiveRecord::Migration[5.0]
  def change
    add_reference :resturants, :user, foreign_key: true
  end
end
