class Membership < ApplicationRecord
  belongs_to :client
  belongs_to :gym

  validates :gym_id, presence: true
  validates :client_id, presence: true
  validates :charge, presence: true
  validates_uniqueness_of :client_id, :scope => :gym_id
end
