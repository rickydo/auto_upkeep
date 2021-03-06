class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(new_user_params)

		if @user.save
			sign_in(@user)
			redirect_to root_path
		else
			redirect_to new_user_path
			flash[:error] = @user.errors.empty? ? "Error" : @user.errors.full_messages.to_sentence
		end
	end

	private

	def new_user_params
		params.require(:user).permit(
			:first_name,
			:last_name,
			:email,
			:username,
			:password,
			:password_confirmation
			)
	end
end
