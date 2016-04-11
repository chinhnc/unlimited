class Comment < ActiveRecord::Base
  belongs_to :image
  belongs_to :user
  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  validates :image_id, presence: true
  validates :content, presence: true

end
