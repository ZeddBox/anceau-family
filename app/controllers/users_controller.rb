class UsersController < ApplicationController

  def show
    @user = User.find_by(slug: params[:id])
  end

  def edit
  end

  def update
  end
  
end
