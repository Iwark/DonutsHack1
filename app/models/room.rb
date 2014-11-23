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
#  hold_at         :datetime
#  user_id         :integer
#

class Room < ActiveRecord::Base
  has_many :room_users
  has_many :users, through: :room_users
  belongs_to :user

  # ステータス:
  #   temp(作成済み)
  #   open(募集中)
  #   full(満員)
  #   closed(終了)
  #   deleted(削除)
  enum status: { temp: 10, open: 20, full: 30, closed:40, deleted: 50 }
  validates :status, inclusion: { in: %w(temp open full closed deleted) }

  # ステータスで絞り込み
  scope :by_status, -> status {
    where(status: Room.statuses[status])
  }

  before_create :set_invitation_code

  def set_invitation_code
    self.invitation_code = SecureRandom.uuid[0..7]
  end

end
