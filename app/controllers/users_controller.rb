class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  def show
    @articles = current_user.articles.reverse_order.page(params[:page])
    @likes_articles = current_user.likes_articles.page(params[:page])
    @stores = current_user.favorites_stores.page(params[:page])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :nameß)
  end

end
