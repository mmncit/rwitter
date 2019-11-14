class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  def index
    # display the post of currently logged-in user sorted by newest first
    @posts = Post.where(:user => current_user).newest_first
  end

  # GET /posts/1
  def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

      @post.user = current_user # only the current user can posts  
      if @post.save
        # if post is saved successfully, redirect to the index action
        flash[:success] = "Post was successfully created."
        redirect_to(posts_path)
      else
        # if fails, re-display the page with proper error message
        render :new
      end

  end

  # PATCH/PUT /posts/1
  def update
    
      if @post.update_attributes(post_params)
        flash[:success] = "Post was successfully updated."
        redirect_to(post_path(@post))
      else
        render('edit')
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
    flash[:success] = "Post was successfully deleted."
    redirect_to(posts_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
