class StoresController < ApplicationController
  before_action :find_store, only: [:edit, :update, :destroy]
  #before_action :set_articles, only: [:show]

  def index
    @q = Store.ransack(params[:q])
    @stores = @q.result(distinct: true).order(created_at: :desc)
    @store = Store.new

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
    #binding.pry
    @store = Store.new(store_params)
    #@area = Area.find(params[:id])
    #@store = store.new
    if @store.save
      #binding.pry
      redirect_to store_path(@store), success: t('defaults.message.created', item: Store.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_created', item: Store.model_name.human)
      render :new
    end
  end #管理者のみ使えるようにする？

  def show
    @store = Store.new
    @store = Store.find(params[:id])
    # 新着コメントを上から3件取得
    #@store_articles_latest3 = @store_articles.first(3)
    # 新着コメント3件を除く全コメントを取得 (3件以下の場合は空)
    #@store_articles_offset3 = @store_articles.offset(3)
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
    #binding.pry
    @store.destroy!
    redirect_to stores_path(@store), success: t('defaults.message.deleted', item: Store.model_name.human)
  end

  def favorites
    #binding.pry
    @q = current_user.favorites_stores.ransack(params[:q])
    #@favorite_stores = current_user.favorites_stores.includes(:user).order(created_at: :desc)
    @favorite_stores = @q.result(distinct: true).includes(:user).order(created_at: :desc)
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

  private

  def store_params
    params.require(:store).permit(:name, :address, :tel, :closing_day, :closing_hours, :opening_hours, :store_image, :store_image_cache, :area_id, feature_ids: [])
  end

  def find_store
    #@store = Store.find(params[:store_id])
    @store = Store.find(params[:id])
  end

  #def set_articles
    # storeに紐づくarticlesを新着順で取得
    #@store_articles = @store.articles.includes(:user).order('created_at DESC')
  #end
end
