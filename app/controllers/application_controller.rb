class ApplicationController < ActionController::Base


def current_user
  User.find(session[:user_id]) ||User.new
end

def require_login
  if !session[:user_id]
    flash[:messages]=["you must be signed in to access that page. Sign in below"]
    redirect_to '/signin'
  end
end



end
