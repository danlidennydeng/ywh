class Painting < ApplicationRecord

  #attr_accessible :image, :name
  mount_uploader :image, PictureUploader

end
