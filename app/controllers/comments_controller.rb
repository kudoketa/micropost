class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @comment.save!
    redirect_to @comment.micropost
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:micropost_id, :content)
  end
end
