# == Schema Information
#
# Table name: fitbit_users
#
#  id            :integer          not null, primary key
#  uid           :integer
#  identity      :integer
#  password      :string
#  notification  :integer
#  care_giver_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :fitbit_user do
    uid 1
    identity 1
    password "MyString"
    notification 1
    care_giver_id 1
  end
end
