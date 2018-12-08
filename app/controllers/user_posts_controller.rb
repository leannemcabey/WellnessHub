class UserPostsController < ApplicationController

  def create
    @new_post = UserPost.new(post_params)
    if !@new_post.valid?
      flash[:errors]=@new_post.errors.full_messages
      redirect_to "/posts"
      return
    end
  flash[:messages]=["the post has been saved"]
        redirect_to "/posts"
  end

  def destroy
    @user_post = UserPost.find(params[:id])
    @user_post.destroy
    flash[:messages] = 'Post Successfully Removed!'
    redirect_to user_path(current_user)
  end

  private

    def post_params
      params.require(:user_post).permit(:user_id, :post_id, :intention_name)
    end

end
