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

class CareGiver < ApplicationRecord
  has_many :fitbitUsers
end
