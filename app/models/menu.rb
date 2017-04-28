class Menu < ActiveRecord::Base
	belongs_to :user
	belongs_to :resturant
	
	mount_uploader :figure, ImageUploader
end