class ProfilesController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
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

	def update
		@user = User.find_by_profile_name(params[:id])
		if @user.update(user_params)
			render 'show'
		else
			render 'edit'
		end
	end

	def edit
		@user = User.find_by_profile_name(params[:id])
	end


	private

	def user_params
		params.require(:user).permit(:soundcloud, :facebook, :linkedin, :link, :about, :website, :dribble, :long_request)
	end

	def set_user
		@user = User.find_by_profile_name(params[:id])
	end

end
