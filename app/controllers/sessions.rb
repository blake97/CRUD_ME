get '/sessions/new' do
  erb :'/sessions/new'
end


post '/sessions' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    redirect "/"
  else
    @errors = ["Username/password combination is incorrect."]
    erb :'/sessions/new'
  end
end


delete '/sessions' do
  session.clear
  redirect '/'
end
