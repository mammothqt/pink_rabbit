class Stage < ApplicationRecord
  has_many :bookings

  validates :name, presence: true
  validates :address, presence: true
end
