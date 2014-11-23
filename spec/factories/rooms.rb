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

FactoryGirl.define do
  factory :room do
    title "MyString"
status 1
place "MyString"
invitation_code "MyString"
  end

end
