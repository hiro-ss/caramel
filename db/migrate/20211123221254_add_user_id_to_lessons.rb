class AddUserIdToLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :user_id, :bigint
  end
end
