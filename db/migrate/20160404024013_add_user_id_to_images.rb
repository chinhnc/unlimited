class AddUserIdToImages < ActiveRecord::Migration
  def change
    add_reference :images, :user_id, index: true, foreign_key: true
    add_foreign_key :images, :users
  end
end
