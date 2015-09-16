class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.references :bootcoder, index: true
      t.references :day
      t.references :hour
      t.string :frequency
      t.timestamps
    end
  end
end
