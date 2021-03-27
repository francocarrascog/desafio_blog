class PostsController < ApplicationController
  http_basic_authenticate_with name: "tunombre", password: "tupassword", only:
:dashboard

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def create
    @post = Post.create(title: params[:title],
                        image_url: params[:image_url],
                        content: params[:content]) 
  end

  def dashboard
    @posts = Post.all 
  end
end
