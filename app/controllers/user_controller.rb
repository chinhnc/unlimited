class UserController < ApplicationController
  def profile
    @user = User.find(params[:id])
  end

  def photo
    @user = User.find(params[:id])
    @images = @user.images
  end
  def follow
    @user = User.find(params[:id])
  end
end
