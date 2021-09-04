class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change

    add_column :users, :name, :string, null: false, default: '', limit: 100
    add_column :users, :introduce, :string, limit: 500
    add_column :users, :avatar, :string
  end
end
