class PostsController < ApplicationController

  def index
    @categories=Category.all
    @user=User.new
  end


  def show
    set_post
  end

  def edit
    set_post
  end

  def new
    @post=Post.new
  end

  def create
    @post=post.create(post_params)
    if @post.valid?
      redirect_to post_path(@post)
    else render action: :new
    end

  end

  def update
    set_post
    if @post.update(post_params)
      redirect_to post_path(@post)
    else render action: :edit
    end
  end

  def destroy
    set_post
    @post.destroy
    redirect_to posts_path
  end

private
  def set_post
    @post=Post.find(params[:id])

  end

  def post_params
    params.require(:post).permit(:category_id)
  end
end
