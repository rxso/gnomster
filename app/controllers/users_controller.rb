class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  before_action :authenticate_user!
  def create
    @user = User.find(params[:id])
    @user.avatars.create(avatar_params)
    redirect_to root_path
  end

  private

  def avatar_params
    params.require(:user).permit(:email, :first_name, :last_name, :username, avatars: [])
  end


end
