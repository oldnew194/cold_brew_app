class Admin::ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @q = Article.ransack(params[:q])
    @articles = @q.result(distinct: true).includes(:user).order(created_at: :desc).page(params[:page])
  end

  def show; end

  def edit; end

  def update
    if @article.update(article_params)
      redirect_to admin_article_path(@article), success: '掲示板を更新しました'
    else
      flash.now[:danger] = '更新できませんでした'
      render 'edit'
    end
  end

  def destroy
    @article.destroy!
    redirect_to admin_articles_path, success: '掲示板を削除しました'
  end
  
  private

  def set_article
    @article = Article.find(params[:id])
  end
  
  def article_params
    params.require(:article).permit(:title, :body, :article_image, :article_image_cache)
  end

end
