class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def index
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
end
