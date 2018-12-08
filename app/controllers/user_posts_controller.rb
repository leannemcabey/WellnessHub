class UserPostsController < ApplicationController

  def create
    @new_post = UserPost.new(post_params)
    if !@new_post.valid?
      flash[:errors]=@new_post.errors.full_messages
      redirect_to "/posts"
      return
    end
    db_record = UserPost.find_by(user_id: @new_post.user_id, post_id:@new_post.post_id, intention_id:@new_post.intention_id)
    if !db_record
      @new_post.save
      flash[:messages]=["the post has been saved"]
        redirect_to "/posts"
    else
      flash[:messages]=["Already saved"]
      redirect_to "/posts"
    end
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
