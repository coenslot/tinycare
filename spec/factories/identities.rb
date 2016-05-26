# == Schema Information
#
# Table name: identities
#
#  id             :integer          not null, primary key
#  fitbit_user_id :integer
#  provider       :string
#  acces_token    :string
#  refresh_token  :string
#  expires_at     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :identity do
    id 1
    provider ""
    acces_token ""
    refresh_token ""
    expires_at ""
  end
end
