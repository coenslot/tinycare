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

FactoryGirl.define do
  factory :notification do
    id 1
    warning ""
    fitbit_id 1
    data_type ""
    grafity ""
    status ""
    document_file_name ""
    document_content_type ""
    document_file_size ""
    fitbit_user_id 1
  end
end
