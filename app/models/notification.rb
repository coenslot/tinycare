# == Schema Information
#
# Table name: notifications
#
#  id                    :integer          not null, primary key
#  warning               :string
#  fitbit_id             :integer
#  data_type             :string
#  grafity               :string
#  status                :string
#  document_file_name    :string
#  document_content_type :string
#  document_file_size    :string
#  fitbit_user_id        :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Notification < ApplicationRecord
	belongs_to :fitbitUser
end
