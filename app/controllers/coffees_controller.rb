class CoffeesController < ApplicationController

  def index
    @articles = Article.all
    @coffees = Coffee.where(article_id: @article).order(created_at: :desc)
  end

  def new
    @coffee = Coffee.new
  end

  def create; end

  def destroy; end

  def show
    @articles = Article.all
    @coffee = Coffee.find(params[:id])
  end

  private

  def coffee_params
    params.require(:coffee).permit(:producing_area).merge(article_id: params[:article_id])
  end

end
