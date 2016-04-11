class Image < ActiveRecord::Base
  mount_uploader :file, ImageUploader
  belongs_to :user
  has_many :comments
  has_many :likes
  validates_presence_of :title, :file, :description
end
