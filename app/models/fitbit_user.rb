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

class FitbitUser < ApplicationRecord
	has_many :stakeholders
	has_many :notifications  
	belongs_to :careGiver
	has_one :identity
end
