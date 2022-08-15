class FavoritesController < ApplicationController
  def create
    store = Store.find(params[:store_id])
    current_user.favorite(store)
    redirect_back fallback_location: root_path, success: t('.success')
  end

  def destroy
    #binding.pry
    store = current_user.favorites.find(params[:id]).store
    current_user.unfavorite(store)
    redirect_back fallback_location: root_path, success: t('.success')
  end
end
