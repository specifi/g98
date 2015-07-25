class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = current_user.posts.new
  end

  def create
     @post = current_user.posts.new(post_params)
     if @post.save
       redirect_to posts_path
     end
   end

private

  def all_tasks
   @tasks = current_user.posts.all
  end

  def post_params
   params.require(:post).permit(:title, :description, :url)
  end
end
