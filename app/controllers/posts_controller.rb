class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :new, :create, :destroy]
  before_action :set_default, only: [ :show, :edit, :update, :destroy]

  def index
    @posts = Post.all
    @tags = Tag.all
    @tag = Tag.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      flash[:success] = "Your post was added"
      redirect_to post_path(@post)
    else
      flash[:danger] = "Oops, something went wrong and your post wasn't saved"
      redirect_to :back
    end
  end

  def show
    @tags = @post.tags

  end

  def edit

  end

  def update
    if @post.update(post_params)
      flash[:success] = "Post change saved"
      redirect_to post_path(@post)
    else
      flash[:danger] = "Nope, nothing has changed."
      render :edit
    end
  end

  def destroy
    if @post.destroy
      flash[:success] = "Post deleted."
      redirect_to posts_path
    else
      flash[:danger] = "Post is still there, try again."
      redirect_to post_path(@post)
    end
  end




  private

  def set_default
    @posts = Post.all
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:author, :title, :body, :picture, :tag_ids => [])
  end

end
