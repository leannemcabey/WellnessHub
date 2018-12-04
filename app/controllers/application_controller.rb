class ApplicationController < ActionController::Base


def current_user
  User.find(session[:user_id]) ||User.new
end


end
