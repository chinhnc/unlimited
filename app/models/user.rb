class User < ActiveRecord::Base
  has_many :images
  has_many :comments
  has_many :likes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def liked?(image)
    image.likes.where(:user_id => id).blank?
  end
end
