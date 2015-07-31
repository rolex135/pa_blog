class PostsController < ApplicationController
  attr_accessor :post, :posts

  def index
    @posts = Post.order("created_at").reverse_order.published

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
      format.atom
    end
  end

  def show
    @post = Post.published.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

end
