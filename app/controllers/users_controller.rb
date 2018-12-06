class UsersController < ApplicationController

  before_action :find_user, only: [:edit, :update, :destroy]
  before_action :require_login, only: [:show, :edit, :update, :destroy]

  def show

    if session[:user_id]!=params[:id]
      redirect_to user_path(session[:user_id])
      return
    end

    @user = current_user

    @complete_intentions = current_user.intentions.select {|intention| intention.complete == true}
    @incomplete_intentions = current_user.intentions.select {|intention| intention.complete == false}
    @all_intentions = [@incomplete_intentions, @complete_intentions]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to '/logout'
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
    redirect_to new_user_path
    # THIS PATH SHOULD BE UPDATED ONCE WE HAVE A LOGIN PAGE OR SOMETHING
  end

  private

    def find_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end
