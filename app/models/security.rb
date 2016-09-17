class Security < ApplicationRecord
  has_many :users

  default_scope -> { order ('level DESC') }
end
