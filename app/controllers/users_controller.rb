class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @votes = @user.votes
  end

  def edit
  end

  def update
  end

private
  def user_params
    params.require(:user).permit(:name, :email)
  end


end
