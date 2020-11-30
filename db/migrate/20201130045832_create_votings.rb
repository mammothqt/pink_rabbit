class CreateVotings < ActiveRecord::Migration[6.0]
  def change
    create_table :votings do |t|
      t.integer :status, default: 0
      t.string :voting_type
      t.integer :voting_id

      t.timestamps
    end
  end
end
