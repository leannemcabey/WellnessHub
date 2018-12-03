class UserPostsController < ApplicationController
  def create
    @userpost=UserPost.create(params.require(:userpost).permet())
  end
end
