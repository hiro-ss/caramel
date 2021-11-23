class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :title, null: false
      t.text :explain, null: false
      t.integer :price, null: false
      t.bigint :saler_id
      t.bigint :buyer_id

      t.timestamps
    end
  end
end
