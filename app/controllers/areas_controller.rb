class AreasController < ApplicationController
  before_action :set_store, only: [:show]
  before_action :find_area, only: [:edit, :update, :destroy]

  def index
   #binding.pry
    @areas = Area.all
  end

  def new
    @area = Area.new
  end

  def edit; end

  def create
    @area = Area.new(area_params)
    if @area.save
      redirect_to root_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  def update
    if @area.update(area_params)
      redirect_to areas_path, success: t('defaults.message.updated', item: Area.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_updated', item: Area.model_name.human)
      render :edit
    end
  end

  def destroy
    @area.destroy!
    redirect_to areas_path, success: t('defaults.message.deleted', item: Area.model_name.human)
  end

  def show
    @area = Area.find(params[:id])
    @stores = @area.stores
  end

  private

  def area_params
    params.require(:area).permit(:name)
    #.merge(store_id: params[:store_id])
  end

  def find_area
    @area = Area.find(params[:id])
  end

  def set_store
    @store = Store.find(params[:id])
  end

end
