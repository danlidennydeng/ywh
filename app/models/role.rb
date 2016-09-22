class Role < ApplicationRecord

  belongs_to :entity
  belongs_to :role_category

  has_many :users

end
