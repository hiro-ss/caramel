class LessonImage < ApplicationRecord
  belongs_to :lesson
  mount_uploader :src, ImageUploader
end
