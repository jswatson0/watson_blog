class PostsController < ApplicationController

def index
	@name = 'Jason Watson'
	@posts = Post.all
end

end