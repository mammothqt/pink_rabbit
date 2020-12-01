class Voting < ApplicationRecord
  belongs_to :votingable, polymorphic: true

  enum status: { no_idea: 0, can_join: 1, busy: 2 }
end
