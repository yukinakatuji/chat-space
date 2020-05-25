class UsersController < ApplicationController

  def edit
  end

  def update
    if currrent_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
end

  private

  def user_params
    paramas.require(:user).permit(:name, :email)
  end
end