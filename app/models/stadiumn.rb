class Stadiumn < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }
  validates :address, presence: true, length: { maximum: 500 }
end
