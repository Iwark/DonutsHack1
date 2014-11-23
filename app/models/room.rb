# == Schema Information
#
# Table name: rooms
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  status          :integer
#  place           :string(255)
#  invitation_code :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Room < ActiveRecord::Base
  has_many :room_users
  has_many :users, through: :room_users

  # ステータス:
  #   temp(作成済み)
  #   open(募集中)
  #   full(満員)
  #   closed(終了)
  #   deleted(削除)
  enum status: { temp: 10, open: 20, full: 30, closed:40, deleted: 50 }
  validates :status, inclusion: { in: %w(temp open full closed deleted) }

end
