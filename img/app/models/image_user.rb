class ImageUser < ActiveRecord::Base
  has_one :users
  has_one :images
  
end
