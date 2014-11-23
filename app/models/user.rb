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
#  image               :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable,
         :omniauthable

  has_many :room_users
  has_many :rooms, through: :room_users

  mount_uploader :image, UserImageUploader

  # 性別 :
  #   temp(申請中)
  #   accepted(OK)
  #   refused(NG)
  #   canceled(招待者がキャンセルした場合)
  enum gender: { man: "男性", woman: "女性" }

  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
    user = User.where(provider: auth.provider, uid: auth.uid).first
    unless user
      user = User.create(
        name:     auth.info.nickname,
        provider: auth.provider,
        uid:      auth.uid
      )
    end
    user
  end

  def self.create_unique_string
    SecureRandom.uuid
  end

  def email_required?
    super && provider.blank?
  end

  def email_changed?
    false
  end

  def password
    false
  end

  def password_required?
    super && provider.blank?
  end

  def encrypted_password
    false
  end
end
