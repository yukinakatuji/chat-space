class UsersController < ApplicationController

  def index
    return nil if params[:keyword] == ""
    @users = User.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id).limit(10)
    respond_to do |format|
      format.html
      format.json
    end
  end

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