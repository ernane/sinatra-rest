before do
  content_type :json
  request.body.rewind  # in case someone already read it
end

get '/' do
  users = User.all
  users.to_json
end

post "/users" do
  data = JSON.parse(request.body.read)
  user = User.create(data)
  #binding.pry
  redirect '/'
end

get '/users/:id' do
  user = User.find_by_id(params[:id])
  user.to_json
end

put '/users/:id' do
  data = JSON.parse(request.body.read)
	user = User.find_by_id(params[:id])
  user.update(name: data[0]['name'], email: data[0]['email'])
	redirect '/'
end


delete '/users/:id' do
	user = User.find_by_id(params[:id])
	user.destroy
	redirect '/'
end
