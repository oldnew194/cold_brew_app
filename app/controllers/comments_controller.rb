class CommentsController < ApplicationController
  #before_action :require_login

  def create
    comment = current_user.comments.build(comment_params)
    if comment.save
      redirect_to store_path(comment.store), success: t('defaults.message.created', item: Comment.model_name.human)
    else
      redirect_to store_path(comment.store), danger: t('defaults.message.not_created', item: Comment.model_name.human)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body).merge(store_id: params[:store_id])
  end
end