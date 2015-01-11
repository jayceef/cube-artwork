# index
get '/' do
  @posts = Post.all.reverse
  erb :index
end

# new
# get '/posts/new' do
#   erb :new
# end

# show
get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :show
end

# create
post '/posts' do
  Post.create(params)
  redirect '/'
end

get '/login' do
  erb :login
end

post '/posts/new' do
  if params[:password] == ENV['SECRET']
    erb :new
  else
    redirect '/login'
  end
end
