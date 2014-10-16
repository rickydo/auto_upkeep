class SessionsController < ApplicationController
	def new 
		if session[:user_id]
			redirect_to root_path
		end
	end

	def create
		@user = User.find_by(username: params [:name])

		if @user
			if @user.authenticate(params[:password])
				session[:user_id] = @user.id
				redirect_to root_path
			else 
				redirect_to root_path
			end
		else
			redirect_to root_path
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end

end