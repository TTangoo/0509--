class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
  end
  
  def create
    post = Post.new
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.save
    
    redirect_to '/'
  end
  
  def destroy
    post = Post.find(params[:post_id])
    post.destroy!
    redirect_to '/'
  end
  
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end
  
  
end
