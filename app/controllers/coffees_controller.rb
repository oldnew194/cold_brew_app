class CoffeesController < ApplicationController
  before_action :find_coffee, only: %i[edit update destroy]
  before_action :check_admin, only: %i[new edit create update destroy]

  def index
    @coffees = Coffee.all
  end

  def new
    @coffee = Coffee.new
  end

  def create
    @coffee = Coffee.new(coffee_params_nomerge)
    if @coffee.save
      redirect_to coffees_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  def destroy
    @coffee.destroy!
    redirect_to coffees_path, success: t('defaults.message.deleted', item: Coffee.model_name.human)
  end

  def update
    if @coffee.update(coffee_params_nomerge)
      redirect_to coffees_path, success: t('defaults.message.updated', item: Coffee.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_updated', item: Coffee.model_name.human)
      render :edit
    end
  end

  def show
    @articles = Article.all
    @coffee = Coffee.find(params[:id])
    @articles_page = @coffee.articles.page(params[:page])
    @articles_count = @coffee.articles
    @coffees_count = @articles_count.count
  end

  private

  def coffee_params
    params.require(:coffee).permit(:producing_area).merge(article_id: params[:article_id])
  end

  def coffee_params_nomerge
    params.require(:coffee).permit(:producing_area)
  end

  def find_coffee
    @coffee = Coffee.find(params[:id])
  end

end
