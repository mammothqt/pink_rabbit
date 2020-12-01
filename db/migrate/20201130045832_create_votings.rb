class CreateVotings < ActiveRecord::Migration[6.0]
  def change
    create_table :votings do |t|
      t.integer :status, default: 0
      t.string :votingable_type
      t.integer :votingable_id

      t.timestamps
    end
  end
end
