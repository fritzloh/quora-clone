require 'byebug'

post '/answers/create' do
	
	@answer = Answer.create(body: params[:answer][:body], user_id: session['user_id'], question_id: params[:answer][:question_id])
	
	redirect to "/"
end


get '/answers' do

	@answers = Answer.all

	erb :"static/home"
end