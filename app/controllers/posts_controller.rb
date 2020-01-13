class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    
    
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    #byebug
    post = Post.create(post_params)
    #byebug
    c_ids = params[:post][:category_ids]
    if c_ids
      c_ids.filter! {|c_id| c_id != ""}
      c_ids.each do |c_id|
        if Category.exists?(id: c_id) 
         c = Category.find(c_id)
         post.categories << c
        end 
      end 
    end  
    #byebug
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[],
     categories_attr: [:name])
  end
end
