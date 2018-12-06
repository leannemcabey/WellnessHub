  class SessionsController < ApplicationController
      def new
        @user=User.new
          # nothing to do here!
      end

      def create_then_posts
          if User.find_by(user_params)
          session[:user_id]=params[:user][:id]
          @user = current_user
          redirect_to posts_path
        else flash[:message]="incorrect username or password"
            redirect_to '/signin'
        end
      end

      def create_then_user
          if User.find_by(user_params)
          session[:user_id]=params[:user][:id]
          @user = current_user
          redirect_to user_path(@user)
        else flash[:message]="incorrect username or password"
          redirect_to '/signin'
        end
      end

      def logout
        session[:user_id]= nil
        redirect_to '/signin'
      end


      private

      def user_params
        params.require(:user).permit(:id, :name, :email, :password)
      end
end
