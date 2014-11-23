class CreateRoomUsers < ActiveRecord::Migration
  def change
    create_table :room_users do |t|
      t.integer :user_id
      t.integer :room_id
      t.integer :status

      t.timestamps
    end
  end
end
