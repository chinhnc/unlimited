class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:recent_images]
  def home
    @images = Image.all.order(:updated_at => :desc).paginate(page: params[:page], :per_page => 10)
  end

  def hot
    @images = Image.joins(:likes).group("images.id").order("count(images.id) DESC").paginate(page: params[:page], :per_page => 10)
  end

  def recent_images
    following_ids = "SELECT followed_id FROM relationships WHERE follower_id = :user_id"
    @images = Image.where("user_id IN (#{following_ids}) OR user_id = :user_id", user_id: current_user.id).order(:updated_at => :desc).paginate(page: params[:page], :per_page => 10)
  end
end