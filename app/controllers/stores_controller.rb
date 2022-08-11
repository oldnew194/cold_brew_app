class StoresController < ApplicationController

  def index
    @stores = Store.all.order(created_at: :desc)
  end

  def new
    @store = Store.new
  end

  def create; end #管理者のみ使えるようにする？

  def show
    #binding.pry
    @store = Store.find(params[:id])
    @comment = Comment.new
    @comments = @store.comments.includes(:user).order(created_at: :desc)
  end

  private
  def store_params
    params.require(:store).permit(:name, :address, :tel, :opening_hours, :closing_hours, :store_image, :store_image_cache)
  end
end
