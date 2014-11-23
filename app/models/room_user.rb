# == Schema Information
#
# Table name: room_users
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  room_id    :integer
#  status     :integer
#  created_at :datetime
#  updated_at :datetime
#

class RoomUser < ActiveRecord::Base
  belongs_to :room
  belongs_to :user

  # ステータス:
  #   temp(申請中)
  #   accepted(OK)
  #   refused(NG)
  #   canceled(招待者がキャンセルした場合)
  enum status: { temp: 10, accepted: 20, refused: 30, canceled:40 }
  validates :status, inclusion: { in: %w(temp accepted refused canceled) }

end
