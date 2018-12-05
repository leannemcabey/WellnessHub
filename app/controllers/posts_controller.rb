class PostsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index, :filter_to_index]

  def index
    if session[:user_id]
      @user=current_user
      @intentions=@user.intentions
      @user_post=@user.user_posts.build
    end
    if flash[:category_id] && !flash[:category_id].empty?
      @categories=Category.where(id:flash[:category_id])

    else
      @categories=Category.all
    end
    @all_categories=Category.all
  end

  def filter_to_index
    flash[:category_id]=params[:category][:id]
    redirect_to posts_path
  end

  def show
    set_post
    if session[:user_id]
      @user=current_user
      @intentions=@user.intentions
      @user_post=@user.user_posts.build
    end
    @categories=Category.all
  end

  def edit
    set_post
  end

  def new
    @post=current_user.owned_posts.build
  end

  def create
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
    @post=Post.find_by(id: params[:id],owner_id:current_user.id)
    if !@post
      flash[:messages]=["You attempted to view a post that was deleted. You have been redirected to the index page"]
      redirect_to posts_path
    end
  end

  def post_params
    params.require(:post).permit(:title, :address, :comment, :url, :owner_id)
  end
end
