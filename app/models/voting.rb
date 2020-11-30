class Voting < ApplicationRecord
  belongs_to :votingable, polymorphic: true

  enum status: { not_chosen: 0, join: 1, busy: 2 }
end
