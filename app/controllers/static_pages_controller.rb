class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      following_ids = "SELECT followed_id FROM relationships WHERE follower_id = :user_id"
      @images = Image.where("user_id IN (#{following_ids}) OR user_id = :user_id", user_id: current_user.id).order(:updated_at => :desc)
    else
      @images = Image.all.order(:updated_at => :desc)
    end
  end

  def start
    if user_signed_in?
      redirect_to home_path
    end
  end
end
