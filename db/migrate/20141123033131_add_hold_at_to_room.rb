class AddHoldAtToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :hold_at, :datetime
  end
end
