helpers do 
	def current_user
		if session[:user_id]
			@current_user ||= User.find_by_(session[:user_id])
		end
	end

	def logged_in?
		!current_user.nil?
	end
	




  def calculate(var)
    var.question_votes.where("vote > 0").count - var.question_votes.where("vote < 1").count
  end

end