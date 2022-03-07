class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to posts_path
    else
      render :new
    end
    end
  
  private
    def comment_params  
      params.require(:comment).permit(:commentes , :post_id , :image)
    end
end
