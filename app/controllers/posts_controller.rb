class PostsController < ApplicationController

	def index
		@posts = Post.all 
	end

	def new
	end

	def create
		@post = Post.new(post_params)

		@post.save
		redirect_to @post
	end


	def show
		p params
		@current_post = Post.find(params[:id])
	end
	

	private

  def post_params
    params.require(:post).permit(:title, :post_text)
  end

end