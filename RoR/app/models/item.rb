# == Schema Information
#
# Table name: items
#
#  id               :bigint           not null, primary key
#  name             :string
#  sale_price_cents :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  product_id       :bigint
#  store_id         :bigint
#
# Indexes
#
#  index_items_on_product_id  (product_id)
#  index_items_on_store_id    (store_id)
#
class Item < ApplicationRecord
  belongs_to :store
  belongs_to :product
end
