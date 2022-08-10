class StoresController < ApplicationController

  def index
    @stores = Store.all.order(created_at: :desc)
  end

  def new
    @store = Store.new
  end

  def create; end #管理者のみ使えるようにする？

  def show
    @store = Store.find(params[:id])
  end

  private
  def store_params
    params.require(:store).permit(:name, :store_image, :store_image_cache)
  end
end
