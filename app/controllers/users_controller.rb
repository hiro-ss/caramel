class UsersController < ApplicationController
  
  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def set_user
    @user = User.find([:id])
  end

end
