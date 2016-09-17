class IndividualIdentity < ApplicationRecord
  belongs_to :user
  belongs_to :sex

  validates :user_id, uniqueness: true
end
