class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.string :hrf
      t.string :suffix

      t.timestamps
    end
  end
end
