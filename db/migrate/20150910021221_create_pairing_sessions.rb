class CreatePairingSessions < ActiveRecord::Migration
  def change
    create_table :pairing_sessions do |t|
      t.references :bootcoder, index: true
      t.integer :pair_id
      t.integer :challenge_id
      t.datetime :session_date

      t.timestamps
    end
  end
end
