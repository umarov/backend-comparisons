class AddMoreDetailsToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :description, :string
    add_column :products, :weight, :integer
    rename_column :items, :cost_cents, :sale_price_cents
  end
end
