class UsersController < ApplicationController

  def show
    @user = User.find_by(slug: params[:id])
  end

  def edit
    @user = User.find_by(slug: params[:id])
    if current_user.id != @user.id
      redirect_to user_path
    end
  end

  def update
  end
  
end
