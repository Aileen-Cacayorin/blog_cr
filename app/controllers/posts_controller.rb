class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :new, :create, :destroy]
  before_action :set_default, only: [ :show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      flash[:success] = "Your post was added"
      redirect_to posts_path
    else
      flash[:danger] = "Oops, something went wrong and your post wasn't saved"
      redirect_to :back
    end
  end

  def show
    
  end



  private

  def set_default
    @posts = Post.all
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:author, :title, :body, :picture)
  end
end
