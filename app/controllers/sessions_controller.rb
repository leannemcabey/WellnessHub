  class SessionsController < ApplicationController
      def new
        @user=User.new
          # nothing to do here!
      end

      def create_then_posts
        user=User.find_by(user_params)
          if user
          session[:user_id]=user.id.to_s
          @user = current_user
          redirect_to posts_path
        else flash[:messages]=["incorrect username or password"]
            redirect_to '/signin'
        end
      end

      def create_then_user
        user=User.find_by(user_params)
          if user
          session[:user_id]=user.id.to_s
          @user = current_user
          redirect_to user_path(@user)
        else flash[:messages]=["incorrect username or password"]
          redirect_to '/signin'
        end
      end

      def logout
        session[:user_id]= nil
        redirect_to '/welcome'
      end


      private

      def user_params
        params.require(:user).permit(:id, :name, :email, :password)
      end
end
