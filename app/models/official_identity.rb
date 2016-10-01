class OfficialIdentity < ApplicationRecord
  belongs_to :user
  mount_uploader :image1, PictureUploader

  validates :user_id, uniqueness: true
end
