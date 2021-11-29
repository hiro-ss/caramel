class CreateLessonImages < ActiveRecord::Migration[6.1]
  def change
    create_table :lesson_images do |t|
      t.string :image
      t.integer :lesson_id

      t.timestamps
    end
  end
end
