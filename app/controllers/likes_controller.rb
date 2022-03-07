class LikesController < ApplicationController
 	def create
	    @like = current_user.likes.create(like_params)
       	if @like.save
		  redirect_to posts_path 
 		end
	end
	def destroy
		@like = current_user.likes.find(parama[:id])
		@like.destroy
		redirect_to posts_path
	end
private
 	def like_params
	    params.require(:like).permit(:likeable_id, :likeable_type)
	end
end

