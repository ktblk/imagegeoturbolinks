class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user_id = @post.user_id
    # @comment.save
    if @comment.save
      redirect_to post_path(@post)
    else
      redirect_to root_path
    end
  end

  def destroy

  end

  private

    def comment_params
      params.require(:comment).permit(:body)
    end

end
