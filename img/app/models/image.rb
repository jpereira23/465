class Image < ActiveRecord::Base
  belongs_to :user
  has_many :image_users

end
