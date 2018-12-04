class PostsController < ApplicationController

  def index
    @categories=Category.all
    @user=User.new
    @user_post=UserPost.new
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
    byebug
    @post = Post.new(post_params)
    @category_ids = params[:post][:post_categories_attributes]['0'][:id].reject {|id| id.empty?}
    @category_ids.each do |id|
      category = Category.find(id)
      @post.categories << category
    end

    @post.save

    if @post.id
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
    params.require(:post).permit(:title, :address, :comment, :url, :owner_id)
  end
end
