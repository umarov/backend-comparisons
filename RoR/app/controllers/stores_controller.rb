class StoresController < ApplicationController
  def index
    render json: Store.select(['id', 'name'])
  end

  def show
    render json: Store.select(['id', 'name']).find_by!(id: params[:id])
  end
end
