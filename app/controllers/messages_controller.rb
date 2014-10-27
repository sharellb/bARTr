class MessagesController < ApplicationController

	def new
		@message = Message.new
	end

	def create

	end

	def show

	end

	def index

	end

	private

	def message_params
		params.require(:message).permit(:body, :subject)
	end

end
