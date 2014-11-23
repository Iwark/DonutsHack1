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

require 'rails_helper'

RSpec.describe RoomUser, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
