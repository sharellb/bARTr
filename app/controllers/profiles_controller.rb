class ProfilesController < ApplicationController
	def show
		@user = User.find_by_profile_name(params[:id])
		if @user
			render action: :show
		else
			render file: 'public/404', status: 404, formats: [:html]
		end
	end

	def index
		@users = User.all

		if @users
			render action: :index
		else
			render file: 'public/404', status: 404, formats: [:html]
		end
	end
end
