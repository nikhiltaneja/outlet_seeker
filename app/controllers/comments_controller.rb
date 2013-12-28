class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.coffee_shop_id = params[:coffee_shop_id]

    @comment.save

    redirect_to coffee_shop_path(@comment.coffee_shop)
  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
end
