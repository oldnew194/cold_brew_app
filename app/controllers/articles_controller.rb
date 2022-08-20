class ArticlesController < ApplicationController
   #before_action :require_login only: [:new, :create, :edit, :update, :destory]
   before_action :find_article, only: [:edit, :update, :destroy]
   before_action :set_store, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
    #binding.pry
    #@stores = Store.all
    @articles = Article.where(store_id: @store).includes(:user).order(created_at: :desc)
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      #binding.pry
      redirect_to store_path(@store), success: t('defaults.message.created', item: Article.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_created', item: Article.model_name.human)
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = current_user.articles.find(params[:id])
  end

  def update
    article = current_user.articles.find(params[:id])
    if article.update(article_params)
      redirect_to store_article_path(@store), success: t('defaults.message.updated', item: article.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_updated', item: article.model_name.human)
      render :edit
    end
  end

  def destroy
    #binding.pry
    article = current_user.articles.find(params[:id])
    article.destroy!
    redirect_to store_articles_path(@store), success: t('defaults.message.deleted', item: article.model_name.human)
  end

  def bookmarks
    @bookmark_articles = current_user.bookmark_articles.includes(:user).order(created_at: :desc)
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :article_image, :article_image_cache).merge(store_id: params[:store_id])
  end

  def find_article
    #@store = Store.find(params[:store_id])
    @article = current_user.articles.find(params[:id])
  end

  def set_store
    @store = Store.find(params[:store_id])
  end
end