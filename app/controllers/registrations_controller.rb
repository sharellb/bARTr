class RegistrationsController < Devise::RegistrationsController

private

	def sign_up_params 
		params.require(:user).permit(:first_name, :last_name, :profile_name, :email, :password, :password_confirmation, :location) 
	end

	def account_update_params 
		params.require(:user).permit( :email, :first_name, :last_name, :profile_name, :password, :password_confirmation, :current_password, :location) 
	end 
end