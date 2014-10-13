class MessagesController < ApplicationController

	def new
		@message = Message.new
	end

	def create
		@message = Message.new(message_params)
		@conversation = Conversation.new
		@participant = Participant.new
		@participant.user_id = current_user.id

		if @conversation.save 
			@message.conversation_id = @conversation.id
			@participant.conversation_id = @conversation.id
		end
		if @message.save && @participant.save
			redirect_to @message
		else
			render 'new'
		end
	end

	def show
		@participant = Participant.find_by_user_id(current_user.id)
		@conversation = @participant.conversation_id
		@messages = Message.where(:conversation_id => @conversation)
	end

	def index
		@participant = Participant.find_all_by_user_id(current_user.id)
	end

	private

	def message_params
		params.require(:message).permit(:body, :subject)
	end

end
