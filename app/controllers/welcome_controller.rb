class WelcomeController < ApplicationController
  

  def index 
    if params[:search]
      # Search posts by title
      @posts = Post.search_by_title_or_body(params[:search].downcase).newest_first # convert the param to downcase before query
    else
      # display all the posts sorted by newest first
      @posts = Post.newest_first  
    end
  end
  private
    # trust search parameter
    def post_params
      params.require(:post).permit(:search)
    end
end
