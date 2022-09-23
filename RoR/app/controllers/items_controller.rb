class ItemsController < ApplicationController
  def index
    render json: Item.where(
      store_id: params[:store_id]
    ).select(['id', 'sale_price_cents', 'product_id']).load_async
  end

  def show
    render json: Item
      .select(['id', 'sale_price_cents', 'product_id'])
      .find_by!(id: params[:id], store_id: params[:store_id])
  end
end
