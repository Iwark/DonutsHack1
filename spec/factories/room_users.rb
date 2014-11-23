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

FactoryGirl.define do
  factory :room_user do
    user_id 1
room_id 1
status 1
  end

end
