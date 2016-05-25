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

require 'rails_helper'

RSpec.describe CareGiver, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
