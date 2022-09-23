# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  cost_cents  :integer
#  description :string
#  name        :string
#  weight      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
