# == Schema Information
#
# Table name: fitbit_users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class FitbitUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :identities, dependent: :destroy

  has_many :stakeholders
  has_many :notifications
  belongs_to :care_giver
  has_one :identity


  def self.from_omniauth(auth, user)
    identity = Identity.where(provider: auth.provider, uid: auth.uid).first_or_create do |identity|
      if identity.fitbit_user == nil
        fitbit_user = FitbitUser.new
        fitbit_user.email = "#{auth.uid}@#{auth.provider}"
        fitbit_user.password = Devise.friendly_token[0,20]
        fitbit_user.name = auth.extra["raw_info"].user["fullName"]
        fitbit_user.avatar = auth.extra["raw_info"].user["avatar"]
        fitbit_user.gender = auth.extra["raw_info"].user["gender"]
        fitbit_user.birth = auth.extra["raw_info"].user["dateOfBirth"]
        fitbit_user.city = auth.extra["raw_info"].user["city"]
        fitbit_user.care_giver_id = user.id
      end
      identity.fitbit_user = fitbit_user
    end

    identity.access_token = auth['credentials']['token']
    identity.refresh_token = auth['credentials']['refresh_token']
    identity.expires_at = auth['credentials']['expires_at']
    identity.save
    identity.fitbit_user
  end

  def identity_for(provider)
    identities.where(provider: provider).first
  end

  def fitbit_client
    fitbit_identity = identities.where(provider: 'fitbit_oauth2').first
    FitgemOauth2::Client.new(
      token: fitbit_identity.access_token,
      client_id: ENV['FITBIT_CLIENT_ID'],
      client_secret: ENV['FITBIT_CLIENT_SECRET'],
      fitbit_user_id: fitbit_identity.uid
    )
  end
end

