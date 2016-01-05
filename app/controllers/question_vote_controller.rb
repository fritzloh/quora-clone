require 'byebug'



post '/question_vote/:id/up' do

  if QuestionVote.find_by(user_id: session[:user_id], question_id: params[:id]).present?
    @vote = QuestionVote.find_by(user_id: session[:user_id], question_id: params[:id])
    @vote.update(vote: 1)
    
  else
    QuestionVote.create(vote: 1, question_id: params[:id], user_id: session[:user_id])
  end
  redirect "/"
end


post '/question_vote/:id/down' do

  if QuestionVote.find_by(user_id: session[:user_id], question_id: params[:id]).present?
    @vote = QuestionVote.find_by(user_id: session[:user_id], question_id: params[:id])
    @vote.update(vote: -1)
    
  else
    QuestionVote.create(vote: -1, question_id: params[:id], user_id: session[:user_id])
  end
  redirect "/"
end