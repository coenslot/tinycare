# == Schema Information
#
# Table name: stakeholders
#
#  id             :integer          not null, primary key
#  fitbit_user_id :integer
#  first_name     :string
#  insertion      :string
#  last_name      :string
#  stakeholder    :string
#  email          :string
#  telephone      :integer
#  notification   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Stakeholder < ApplicationRecord
end
