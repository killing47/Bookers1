class PostsController < ApplicationController
  def top
  end

  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.save
      flash[:notice] = "Book was successfully created."
      redirect_to post_path(post)
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
       flash[:notice] = "Book was successfully update."
       redirect_to post_path(post)
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      flash[:notice] = "Book was successfully desroyed."
      redirect_to posts_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
