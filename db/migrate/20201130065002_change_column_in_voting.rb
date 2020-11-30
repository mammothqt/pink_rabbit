class ChangeColumnInVoting < ActiveRecord::Migration[6.0]
  def change
  	rename_column :votings, :voting_type, :votingable_type
  	rename_column :votings, :voting_id, :votingable_id
  end
end
