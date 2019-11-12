class WelcomeController < ApplicationController
  def index
    @posts = Post.newest_first
  end
end
