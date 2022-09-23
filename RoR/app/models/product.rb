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
class Product < ApplicationRecord
  has_many :items
end
