class SessionsController < ApplicationController
    skip_before_action :authenticated, only: [:new, :create]
  
    def reset
      session[:page_count] = 0
      # get them back to the page they were on
      redirect_back fallback_location: designers_path
    end
  
    def new
  
    end
  
    def create
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:errors] = ["You are lost"]
        redirect_to login_path
      end 
    end
  
    def destroy
      session.delete(:user_id) #= nil
      redirect_to login_path
    end
  
  end