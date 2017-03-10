class UsersController < ApplicationController

  def users
    @users = User.order(lastName: :asc).all
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    User.create(user_params)
    redirect_to root_path
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy

    redirect_to root_path
  end
  private

  def user_params
    params.require(:user).permit(:firstName, :lastName, :email, :phoneNumber)
  end
end
