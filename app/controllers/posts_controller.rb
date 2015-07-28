class PostsController < ApplicationController
  attr_accessor :post, :posts

  def index
    @posts = Post.published

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
      format.atom
    end
  end

  def show
    @post = Post.published.find(params[:id])

    respond_to do |format|
      format.html.truncate(160) # show.html.erb
      format.json { render json: @post }
    end
  end

end
