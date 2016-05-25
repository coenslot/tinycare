# == Schema Information
#
# Table name: care_givers
#
#  id         :integer          not null, primary key
#  email      :string
#  first_name :string
#  insertion  :string
#  last_name  :string
#  telephone  :integer
#  admin      :boolean
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :care_giver do
    email "MyString"
    first_name "MyString"
    insertion "MyString"
    last_name "MyString"
    telephone 1
    admin false
    password "MyString"
  end
end
