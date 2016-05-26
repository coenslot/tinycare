# == Schema Information
#
# Table name: identities
#
#  id             :integer          not null, primary key
#  fitbit_user_id :integer
#  provider       :string
#  access_token   :string
#  refresh_token  :string
#  expires_at     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  uid            :integer
#

require 'rails_helper'

RSpec.describe Identity, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
