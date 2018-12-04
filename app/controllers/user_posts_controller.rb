class UserPostsController < ApplicationController
  def create
    @new_post = UserPost.new(post_params)
    if !@new_post.valid?
      flash[:errors]=@new_post.errors.full_messages
      redirect_to "/posts"
    end
    db_record = UserPost.where(["user_id = ? and post_id = ? and intention_id = ?", @new_post.user_id, @new_post.post_id, @new_post.intention_id])
    if  db_record.length < 1
      @new_post.save
      flash[:errors]=["the post has benn saved"]
        redirect_to "/posts"
    else
      flash[:errors]=["Already saved"]
      redirect_to "/posts"
    end
  end

  private



def post_params
  params.require(:user_post).permit(:user_id,:post_id,:intention_name)

end

end
