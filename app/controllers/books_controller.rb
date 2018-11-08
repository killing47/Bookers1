class BooksController < ApplicationController

  def show
  end

  def index
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
  
  def book_params
      params.require(:book).permit(:title, :body, :user_image_id)
  end
end
