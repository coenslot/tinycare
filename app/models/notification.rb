# == Schema Information
#
# Table name: notifications
#
#  id             :integer          not null, primary key
#  warning        :string
#  data_type      :string
#  grafity        :string
#  status         :string
#  fitbit_user_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Notification < ApplicationRecord
	belongs_to :fitbit_user
  has_many :stakeholders
end
