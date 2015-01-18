class UsersController < ApplicationController
  before_action :logged_in?, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    redirect_to user_path(@user_id)
  end

  def show
    render :show
  end

  private

    def user_params
      params.require(:user).permit(:email, :password_digest)
    end
    
end
