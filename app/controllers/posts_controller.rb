class PostsController < ApplicationController
  def show
  	@post = Post.find(params[:id])
  end

  def index
  	@post = Post.new
  	@posts = Post.all
  end

  def new
  end

  def create
  	@post = Post.new(post_params)
  	@post.user_id = current_user.id
  	if @post.save
  	  redirect_to posts_path
  	else
  	  @posts = Post.all
  	  render 'index'
  	end
  end

  private
    def post_params
      params.require(:post).permit(:content, :content_image, :address)
    end
end
