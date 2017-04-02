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

require 'rails_helper'

RSpec.describe Notification, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
