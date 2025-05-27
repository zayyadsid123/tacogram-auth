class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end
  
  def create
    @post = Post.new
    @post["body"] = params["body"]
    @post["image"] = params["image"]
    # TODO: assign logged-in user as user that created the post
    @post["user_id"] = @current_user["id"]
    @post.save
    redirect_to "/posts"
  end
end
