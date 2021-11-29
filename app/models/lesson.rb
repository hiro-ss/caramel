class Lesson < ApplicationRecord
  belongs_to :user
  has_many :lesson_images

  accepts_nested_attributes_for :lesson_images, allow_destroy: true
end
