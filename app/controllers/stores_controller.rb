class StoresController < ApplicationController
  before_action :find_store, only: [:edit, :update, :destroy]
  before_action :check_admin, only: %i[new create edit update destroy]

  def index
    @q = Store.ransack(params[:q])
    @stores = @q.result(distinct: true).order(created_at: :desc).page(params[:page])
    @stores_nopage = @q.result(distinct: true).order(created_at: :desc)
    @store = Store.new
    @stores_count = @stores_nopage.count

    if params[:feature_ids]
      @stores = []
      params[:feature_ids].each do |key, value|
        if value == "1"
          feature_stores = Feature.find_by(feature_type: key).stores
          @stores = @stores.empty? ? feature_stores : @stores & feature_stores
        end
      end
    end
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to store_path(@store), success: t('defaults.message.created', item: Store.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_created', item: Store.model_name.human)
      render :new
    end
  end

  def show
    @store = Store.new
    @store = Store.find(params[:id])
    @store_articles = Article.where(store_id: @store).includes(:user).order(created_at: :desc).limit(3)
    @comment = Comment.new
    @comments = @store.comments.includes(:user).order(created_at: :desc)
  end

  def edit; end

  def update
    if @store.update(store_params)
      redirect_to store_path(@store), success: t('defaults.message.updated', item: Store.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_updated', item: Store.model_name.human)
      render :edit
    end
  end

  def destroy
    @store.destroy!
    redirect_to stores_path(@store), success: t('defaults.message.deleted', item: Store.model_name.human)
  end

  def favorites
    @q = current_user.favorites_stores.ransack(params[:q])
    @favorite_stores = @q.result(distinct: true).order(created_at: :desc).page(params[:page])
    @favorites_stores_nopage = @q.result(distinct: true).order(created_at: :desc)
    @favorites_stores_count = @favorites_stores_nopage.count
  end


  private

  def store_params
    params.require(:store).permit(:name, :address, :tel, :closing_day, :closing_hours, :opening_hours, :store_image, :store_image_cache, :area_id, :address2, :opening_hours2, :latitude, :longitude, feature_ids: [])
  end

  def find_store
    @store = Store.find(params[:id])
  end

  def features_save(feature_list)
    if self.features != nil
      store_features_records = StoreFeature.where(store_id: self.id)
      store_features_records.destory_all
    end

    feature_list.each do |feature|
    inspected_feature = Feature.where(feature_type: feature).first_or_create
    self.Features << inspected_feature
    end
  end 

end
