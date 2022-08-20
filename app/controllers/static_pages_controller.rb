class StaticPagesController < ApplicationController
  #skip_before_action :require_login, only: %i[top]

  def top
  end

  def index
    @q = Store.ransack(params[:q])
    #@stores = Store.all.order(created_at: :desc)
    @stores = @q.result(distinct: true).order(created_at: :desc)
  end

  private
  def store_params
    params.require(:store).permit(:name, :address, :tel, :opening_hours, :closing_hours, :store_image, :store_image_cache)
  end


end
