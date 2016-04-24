class AddUserIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :user_id, :integer
    add_reference :images, :users, index: true, foreign_key: true
  end
end
