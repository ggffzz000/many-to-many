class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  
    @user.save
  
    redirect_to users_url
  end

  def edit
  end 

  def update
  end 

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end 

  def show 
    @user = User.find(params[:id])
  end
  
  def hascomment
    @user = User.find(params[:id])
    Comment.create(:owner => @user)
    redirect_to user_path(@user)
  end

  def hasnotcomment
    @user = User.find(params[:id])
    comment = @user.comments.first
    comment.destroy
    redirect_to user_path(@user)
  end
  private

  def user_params
    params.require(:user).permit!
  end

end
