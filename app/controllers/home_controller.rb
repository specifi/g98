class HomeController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC").page(params[:page])
  end
end
