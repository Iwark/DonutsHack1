# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  gender              :string(255)
#  introduction        :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  remember_created_at :datetime
#  sign_in_count       :integer          default(0), not null
#  current_sign_in_at  :datetime
#  last_sign_in_at     :datetime
#  current_sign_in_ip  :string(255)
#  last_sign_in_ip     :string(255)
#  provider            :string(255)      default(""), not null
#  uid                 :string(255)      default(""), not null
#

FactoryGirl.define do
  factory :user do
    name "MyString"
gender "MyString"
introduction "MyString"
  end

end
