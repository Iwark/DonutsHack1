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

FactoryGirl.define do
  factory :user do
    name "MyString"
gender "MyString"
introduction "MyString"
  end

end
