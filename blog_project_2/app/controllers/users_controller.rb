class UsersController < ApplicationController
  before_action :logged_in?, only: [:show]
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to user_path(@user.id)
  end

  def show
    # render :show
    # @user = current_user.articles
  end

  private

    def user_params
      params.require(:user).permit(:email, :password)
    end

    def find_user
      @user = User.find(params[:id])
    end

end
