class CommentsController < ApplicationController
	
	http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

	def create
		@post = Post.find(params[:post_id])
		@comment = 
	@post.comments.create(params[:comment].permit(:commenter, :body))
		redirect_to post_path(@post)
	end

# The destroy action will find the post we 
# are looking at, locate the comment within the @post.comments collection, and then remove it from the database and send us back to the show action for the post.
 	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end

end
