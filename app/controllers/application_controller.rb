class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  before_action :set_search_store
  before_action :set_search_article

  def set_search_store
    @search_store = Store.ransack(params[:q])
    @search_stores = @search_store.result
  end

  def set_search_article
    @search_article = Article.ransack(params[:q])
    @search_articles = @search_article.result
  end

  private

  def not_authenticated
    redirect_to login_path, warning: t('defaultsmessage.not_authenticated')
  end

  def check_admin
    redirect_to root_path, warning: t('defaults.message.not_authorized') unless current_user.admin?
  end
end
