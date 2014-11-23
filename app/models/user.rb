# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  gender       :string(255)
#  introduction :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class User < ActiveRecord::Base
  has_many :room_users
  has_many :rooms, through: :room_users

  # 性別 :
  #   temp(申請中)
  #   accepted(OK)
  #   refused(NG)
  #   canceled(招待者がキャンセルした場合)
  enum gender: { man: "男性", woman: "女性" }
  validates :gender, inclusion: { in: %w(man woman) }

end
