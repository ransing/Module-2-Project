class UsersController < ApplicationController
  


  skip_before_action :authenticated, only: [:new, :create]

def index 
  @users = User.all
end

  def new
    @user = User.new
  end

  def show 
    @user = User.find(params[:id])
    @events = @user.events 
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = ["Invalid Username Or Password"]
      redirect_to new_user_path
    end
  end

  def edit
    @user = @current_user
    
  end

  private

  def user_params
    params.require(:user).permit(:username,:password)
  end
end
  
