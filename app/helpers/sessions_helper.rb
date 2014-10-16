module SessionsHelper

	def sign_in(user)
		session[:user_id] = user.user_id
		self.current_user = user
	end

	def current_user
		User.find(session[:user_id]) if session[:user_id]
	end

	def logged_in?
		session[:user_id].present?
	end

	# def sign_out
	# 	session.delete(:user_id)
	# 	current_user = nil
	# end
end
