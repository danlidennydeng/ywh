class Role < ApplicationRecord

  belongs_to :entity
  has_many :users

end
