require 'byebug'

get '/' do
    # byebug
    if session[:user_id] != nil
    erb :"static/home"
    else
    erb :"static/index"
    end
end

# post '/signup' do
#     #byebug
#     user = User.new(params[:user])
#     if user.save 
#     redirect to '/'
#     else
#     erb :"static/signupfail"
# end

# end

# post '/login' do
#     # byebug
#     user=User.find_by_email(params[:user][:email])
#     if user.authenticate(params[:user][:password])
#         session['user_id']=user.id
#         redirect '/success'
#     else
# # redirect '/'  
#     erb :"static/loginfail"
#     end
# end

# post '/logout' do
#     session['user_id']=""
#     'logged out'
#     redirect '/'
# end


# get '/success' do
#     user=User.find_by_id(session['user_id'])
#     if user
#         erb :"static/login"
#     else
#         redirect '/'
#     end
# end

# get '/users/:id' do
# end