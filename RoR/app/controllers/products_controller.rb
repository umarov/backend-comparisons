class ProductsController < ApplicationController
  def index
    render json: Product
      .select(['id', 'name', 'description', 'cost_cents'])
      .load_async
  end
end
