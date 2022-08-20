class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  before_action :set_search

  def set_search
    @search = Store.ransack(params[:q])
    @search_stores = @search.result
  end

  private

  def not_authenticated
    redirect_to login_path, warning: t('defaultsmessage.not_authenticated')
  end
end
