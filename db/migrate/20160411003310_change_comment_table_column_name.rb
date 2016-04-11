class ChangeCommentTableColumnName < ActiveRecord::Migration
  def change
    rename_column :comments, :user_id_id, :user_id
    rename_column :comments, :image_id_id, :image_id
  end
end
