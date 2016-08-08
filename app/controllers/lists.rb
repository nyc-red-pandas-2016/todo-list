get '/lists' do
  @lists = List.all
  erb :'lists/index'
end


get '/lists/new' do
  erb :'lists/new'
end


post  '/lists' do
  list = current_user.lists.new(params[:list])
  if list.save
    redirect '/lists'
  else
    @errors = list.errors.full_messages
    erb :'lists/new'
  end
end


get '/lists/:id/edit' do
  @list = List.find_by(id: params[:id])
  erb :'lists/edit'
end

put '/lists/:id' do

end
