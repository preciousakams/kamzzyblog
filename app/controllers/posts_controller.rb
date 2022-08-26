class PostsController < ApplicationController
  def index
    @posts = Post.where(user_id: params[:user_id])
    @user = User.find(params[:id])
  end

  def show
    @post = Post.find_by(id: params[:id])
  end
end
