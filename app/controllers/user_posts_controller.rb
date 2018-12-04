class UserPostsController < ApplicationController
  def create

    @userpost=UserPost.new(params.require(:user_post).permit(:user_id,:post_id,:intention_name))

    if @userpost.valid?
      redirect_to post_path(@userpost.post)
    else
      flash[:errors]=@userpost.errors.full_messages
      redirect_to "/posts"
    end
  end

  private






end
