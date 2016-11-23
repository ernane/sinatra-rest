before do
  content_type :json
  request.body.rewind  # in case someone already read it
end

get '/' do
  users = User.all
  users.to_json
end

get '/users/:id' do
  user = User.find_by_id(params[:id])
  user.to_json
end

post "/users" do
  data = JSON.parse(request.body.read)
  user = User.create(data)
  #binding.pry
  redirect '/'
end

delete '/users/:id' do
	user = User.find_by_id(params[:id])
	user.destroy
	redirect '/'
end
