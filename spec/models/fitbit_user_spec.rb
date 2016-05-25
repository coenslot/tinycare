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

require 'rails_helper'

RSpec.describe FitbitUser, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
