class Booking < ApplicationRecord
  belongs_to :stadium
  has_many :votings, as: :votingalbe

  validates :start_time, presence: true

  enum :status { inprogress: 0, booked: 1, cancel: 2 }
end
