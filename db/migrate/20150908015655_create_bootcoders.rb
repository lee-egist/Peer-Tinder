class CreateBootcoders < ActiveRecord::Migration
  def change
    create_table :bootcoders do |t|
      t.string :handle
      t.string :email
      t.string :phone
      t.string :image_url
      t.string :password_digest

      t.timestamps
    end
  end
end
