class CommentsController < ApplicationController
  def create
    @image = Image.find(params[:image_id])
    @comment = @image.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      respond_to do |format|
        format.html {redirect_to @image}
        format.js
      end
    else
      flash[:notice] = "You cannot comment"
      redirect_to @image
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    image = comment.image
    @delete_id = comment.id
    comment.destroy
    respond_to do |format|
      format.html {redirect_to @image}
      format.js
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :image_id)
  end
end
