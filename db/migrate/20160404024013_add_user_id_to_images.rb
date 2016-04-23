class AddUserIdToImages < ActiveRecord::Migration
  def change
    add_reference :images, :user_id, index: true, foreign_key: true
  end
end
