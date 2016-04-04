class Image < ActiveRecord::Base
  mount_uploader :file, ImageUploader
  belongs_to :user
  validates_presence_of :title, :file, :description
end
