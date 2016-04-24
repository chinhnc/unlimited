class SearchController < ApplicationController
  def images_search
    return redirect_to root_url if params[:query] == ""
    @images = Image.search(params[:query])
    @users = User.search(params[:query])
    render 'images/result'
  end
end
