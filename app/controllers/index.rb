get '/' do
  erb :index
end

get '/home' do
  # if session[:user_id]
    @recipes = Recipe.all

    erb :home
  # else
  #   redirect '/'
  # end
end

get '/recipes/:id' do
  @recipe = Recipe.find(params[:id])
  erb :recipes
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

get '/new' do
  erb :'/signup/signup'
end

# get '/session' do
#   @user ||= User.find_by(username: params[:username])
#   erb :index
# end

post '/session' do
  @user = User.find_by(username: params[:username])
  if @user.password == params[:password]
    session[:user_id] = @user.id
    redirect '/home'
  else
    @error_message = "Your password did not match.  Please try again."
  end
  # erb :index
end

post '/new' do
  if params[:password] == params[:confirm_password]
    @user = User.new
    @user.username = params[:username]
    @user.password = params[:password]
    @user.save
    redirect '/'
  else
    @mismatch_error_message = "Incorrect username or password, please try again."
    # Probably not RESTful
    erb :index
  end
end
