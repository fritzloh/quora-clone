require 'byebug'

post '/questions/create' do

	if session[:user_id]
		@question = Question.create(body: params[:question][:body], user_id: session['user_id'])
	
		redirect '/'
	
	end
end


get '/questions' do

	@questions = Question.all

	erb :"static/home"
end


# get '/questions/:id' do
# 	@question = Question.find(params[:id])
# 	@answers = Answer.where(question_id: @question.id)
# 	@question_vote_count = @question.count_votes
# 	erb :"question/show"
# end

# get '/questions/:id/edit' do
# 	@question = Question.find(params[:id])
# 	erb :"question/edit"
# end

patch '/questions/:id' do
	question = Question.find(params[:id])
	question.update(params[:question])
	
	redirect to "/"
end

delete '/questions/:id' do
	question = Question.find(params[:id])
	if question.nil?
		
		erb :"/"
	else
		question.answers.each do |answer|
			answer.destroy
		end
		question.destroy
		
		redirect to "/"
	end
end
