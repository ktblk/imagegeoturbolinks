class RemoveUserIdFromPictures < ActiveRecord::Migration[5.0]
  def change
    remove_column :pictures, :user_id, :integer
  end
end
