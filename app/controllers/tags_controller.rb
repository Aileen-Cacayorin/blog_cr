class TagsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update, :new, :create, :destroy]

  def index
  end

  def new
    @tag = Tag.new

  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:success] = "New tag added."
      redirect_to posts_path
    else
      flash[:danger] = "Oops, try again"
      redirect_to posts_path
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end


end
