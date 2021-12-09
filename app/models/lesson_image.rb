class LessonImage < ApplicationRecord
  belongs_to :lesson
  mount_uploader :image, ImageUploader
end
