class Residence < ApplicationRecord
  belongs_to :user
  belongs_to :xiaoqu

  validates :user_id, uniqueness: true

end
