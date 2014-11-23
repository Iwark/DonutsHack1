class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :title
      t.integer :status
      t.string :place
      t.string :invitation_code

      t.timestamps
    end
  end
end
