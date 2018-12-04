  class SessionsController < ApplicationController
      def new
        @user=User.new
          # nothing to do here!
      end

      def create_and_go_posts
          session[:user_id] = params[:user][:id]
          redirect_to '/posts'
      end

      def create_and_go_to_user
          session[:user_id] = params[:user][:id]
          redirect_to '/posts'
      end
  end
