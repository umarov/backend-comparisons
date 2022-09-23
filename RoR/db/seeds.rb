require 'faker'

store_data = [
  { name: 'Tiny' },
  { name: 'DangerousWay' },
  { name: 'PartialFoods' }
]

stores = store_data.map do |data|
  Store.find_or_create_by(data)
end


stores.each do |store|
  100.times do
    product = Product.create(
      name: Faker::Name.name,
      cost_cents: Faker::Number.number(digits: 6),
      description: Faker::Lorem.paragraph
    )

    Faker::Number.between(from: 100, to: 500).times do
      Item.create(
        name: product.name,
        store_id: store.id,
        product_id: product.id,
        sale_price_cents: product.cost_cents - (product.cost_cents * Faker::Number.between(from: 0.05, to: 0.1))
      )
    end
  end
end
