class LikesController < ApplicationController
  def create
    @image = Image.find(params[:image_id])
    like = @image.likes.build(user_id: current_user.id)
    if like.save
      respond_to do |format|
        format.html {redirect_to @image}
        format.js
      end
    else
      flash[:notice] = "You cannot like this micropost. "
      redirect_to @image
    end
  end

  def destroy
    like = Like.find(params[:id])
    @image = like.image
    like.destroy
    respond_to do |format|
      format.html {redirect_to @image}
      format.js
    end
  end
end

