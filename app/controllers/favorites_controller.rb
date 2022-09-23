class FavoritesController < ApplicationController
  def create
    @store = Store.find(params[:store_id])
    current_user.favorite(@store)
  end

  def destroy
    @store = current_user.favorites.find(params[:id]).store
    current_user.unfavorite(@store)
  end
end
