class UsersController < ApplicationController
  #skip_before_action :require_login, only: %i[new create]

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
    #@user = current_user.find(params[:id])
    
    @articles = current_user.articles.reverse_order
    @likes_articles = current_user.likes_articles
    @stores = current_user.favorites_stores
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :nameß)
  end

end
