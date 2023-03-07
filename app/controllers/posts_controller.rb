class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  def index
    @post=Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy

    redirect_to root_path, status: :see_other
  end

  def status_published
    puts "here clicked"
    puts "#{@post}"
    puts "========================================="
    @post = Post.friendly.find(params[:id])
    @post.update(is_published: !i.is_published) 
  end

  private

  def set_post
    @post = Post.friendly.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end

