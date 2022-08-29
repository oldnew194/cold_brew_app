class FeaturesController < ApplicationController
  #before_action :set_store, only: [:index, :new, :show, :create, :show, :edit, :update, :destroy]

  def index
    @stores = Store.all
    @features = Feature.where(store_id: @store).order(created_at: :desc)
  end

  def new
    @feature = Feature.new
  end

  def create
  end

  def destroy
  end

  def show
    @feature = Feature.find(params[:id])
    #binding.pry
    @stores = @feature.stores
  end

  private

  def feature_params
    params.require(:feature).permit(:feature_type).merge(store_id: params[:store_id])
  end

  #def set_store
    #@store = Store.find(params[:id])
  #end

end
