class Image < ActiveRecord::Base
  mount_uploader :file, ImageUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates_presence_of :title, :file, :description

  def self.search(term)
    where("title LIKE :term or description LIKE :term", term: "%#{term}%")
  end
end
