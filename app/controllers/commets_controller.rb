class CommetsController < ApplicationController
	def create
		@message = Message.find(params[:messsage_id])
		@comment = @message.comment.create(comment_params)
		@comment.user_id = current_user.user_id

		if @comment.save
			redirect_to  message_path(@message)
		else
			render 'new'
		end
	end
	private
	def commet_params
		params.require(:comment).permit(:content)
	end
end
