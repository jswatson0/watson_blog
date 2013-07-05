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

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])
		if @post.save
			redirect_to @post
		else
			render action: 'new'
		end
	end

	def edit
		@post = Post.find(params[:id])

	end

	def update
		@post = Post.find(params[:id])

		respond_to do |format|
		  if @post.update_attributes(params[:post])
		  	format.html { redirect_to @post, messege: 'Yo shit be updated'}
			else
				render action: 'edit'
			end
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to @post
	end


end