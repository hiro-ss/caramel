class LessonsController < ApplicationController
  before_action :ensure_current_user, :only => [:edit, :update]
  before_action :set_lesson, :only => [:edit, :update]

  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    @user = User.find_by(id: @lesson.user_id)
    @lesson_images = @lesson.lesson_images
  end

  def new
    @lesson = Lesson.new
    @lesson_images = @lesson.lesson_images.build
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lessons_path
    else
      render :new
    end
  end

  def edit
  end
  def update
    if @lesson.update(lesson_params)
      redirect_to lesson_path
    else
      render :edit
    end
  end

  private
  def lesson_params
    params.require(:lesson).permit(:title,:explain,:price,lesson_images_attributes: [:id, :lesson_id, :image]).merge(user_id: current_user.id)
  end

  def ensure_current_user
    lesson = Lesson.find(params[:id])
    if lesson.user_id != current_user.id
      redirect_to action: :index
    end
  end
  
  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end
