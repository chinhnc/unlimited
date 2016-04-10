class StaticPagesController < ApplicationController
  def home
    @images = Image.all
  end

  def start
    if user_signed_in?
      redirect_to home_path
    end
  end
end
