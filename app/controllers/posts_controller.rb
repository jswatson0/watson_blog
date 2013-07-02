class PostsController < ApplicationController
@@name = "Jason Watson"

def index
	@name = @@name
	@posts = Post.all
end

def show
	@name = @@name
	@post = Post.find(params[:id])
end

end