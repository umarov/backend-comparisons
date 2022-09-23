class AddRelationships < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :store
    add_reference :items, :product
  end
end
