class ToppagesController < ApplicationController
  def index
    @users = User.all
    @lessons = Lesson.all
  end
end
