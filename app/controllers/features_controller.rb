class FeaturesController < ApplicationController
  before_action :set_store, only: %i[show]
  before_action :check_admin, only: %i[new edit create update destroy]
  before_action :find_feature, only: %i[edit update destroy]

  def index
    @stores = Store.all
    @features = Feature.where(store_id: @store).order(created_at: :desc)
  end

  def new
    @feature = Feature.new
  end

  def edit; end

  def create; end

  def destroy; end

  def show
    @feature = Feature.find(params[:id])
    @stores = @feature.stores.page(params[:page])
    @stores_count = @feature.stores
    @features_count = @stores_count.count
  end

  def update
    if @feature.update(feature_params)
      redirect_to features_path, success: t('defaults.message.updated', item: Feature.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_updated', item: Feature.model_name.human)
      render :edit
    end
  end

  def destroy
    @area.destroy!
    redirect_to features_path, success: t('defaults.message.deleted', item: Feature.model_name.human)
  end

  private

  def feature_params
    params.require(:feature).permit(:feature_type).merge(store_id: params[:store_id])
  end

  def find_feature
    @feature = Feature.find(params[:id])
  end

  def set_store
    @store = Store.find(params[:id])
  end
end
