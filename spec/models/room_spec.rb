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
#

require 'rails_helper'

RSpec.describe Room, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
