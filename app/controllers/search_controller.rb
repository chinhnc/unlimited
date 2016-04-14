class SearchController < ApplicationController
  def images_search
      @images = Image.search(params[:query])
      render 'images/result'
  end
end
