class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    post = Post.find(params[:comment][:post_id])
    user = User.exists?(id: params[:comment][:user_id]) ? User.find(params[:comment][:user_id]) : User.create(username: params[:comment][:user_id])

   
    comment = Comment.create(comment_params)
    post.comments << comment
    user.comments << comment
    #byebug
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes: [:username])
  end

 

end
