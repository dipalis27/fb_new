class PostsController < ApplicationController
  before_action :authenticate_user!
  
  def index
  @post = Post.all
  end

  def new
     @post = Post.new
  end
  
  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end 
  end 

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
    redirect_to posts_path
    else
    render "edit"
    end  
  end

  def edit
      @post = Post.find(params[:id]) 
  end
  
  def show
      @post = Post.find(params[:id])
  end
  
  def destroy
      @post = Post.find(params[:id])
      @post.destroy 
     redirect_to root_path
  end

  
  
  def search
  # byebug
    @query = params[:query]
    @post = Post.where("posts.tittle like ?", ["%#{@query}%"])
    render :index
  end

  private
  def post_params
      params.require(:post).permit(:tittle, :discription, :image  )
  end


end
