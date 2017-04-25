class Review < ActiveRecord::Base
  belongs_to :resturant
  belongs_to :user

  mount_uploader :photo, ImageUploader
end