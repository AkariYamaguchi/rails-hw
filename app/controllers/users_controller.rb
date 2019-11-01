class UsersController < ApplicationController
    def new
    @user = User.new
  end

  def create
    @user = User.create params.require(:user).permit(:name, :image) # POINT
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update params.require(:user).permit(:name, :image) # POINT
    redirect_to @user
  end
end
