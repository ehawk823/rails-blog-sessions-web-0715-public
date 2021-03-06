class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    def user_signed_in?
      !!current_user
    end
  
    def current_user
      current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
    def authorize
      if !user_signed_in?
        render 'sessions/new'
      end
    end


end
