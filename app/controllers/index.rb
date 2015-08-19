get '/' do
  erb :index
end

get '/new' do
  redirect 'https://www.linkedin.com/uas/oauth2/authorization?response_type=code&client_id=758g2o239m2wrk&redirect_uri=https://127.0.0.1:9393/shecodes%2Fauth%2Flinkedin&state=06122015&scope=r_basicprofile'
  # erb :'/signup/signup'
end

#for google
# get '/oathcallback' do
#   body ={
#     code: params[:code],
#     client_id: "id number"
#     client_secret: "secret",
#     redirect_uri: "uri",
#     grant_type: "auth #"
#       }
#   post_response = HTTParty.post("TOKEN PATH",
#     body: body)
#   me = HTTParty.get("API TOKEN PATH",
#     post_response["access_token"])
# end

post '/new' do
  # if params[:password] == params[:confirm_password]
  #   @user = User.new
  #   @user.username = params[:username]
  #   @user.password = params[:password]
  #   @user.save
  #   redirect '/'
  # else
  #   @mismatch_error_message = "Incorrect username or password, please try again."
    # Probably not RESTful
    # erb :index
    redirect '/'
  # end
end

get '/home' do
  # if session[:user_id]
    @recipes = Recipe.all

    erb :home
  # else
  #   redirect '/'
  # end
end

post '/home' do
  redirect '/home'
end

post '/session' do
  @user = User.find_by(email: params[:email])
  if @user.password == params[:password]
    login(@user)
    redirect '/home'
  else
    @error_message = {login_error: "Your password did not match.  Please try again."}
    erb :index
  end
end

get '/recipes/new' do
  erb :create_recipe
end

post '/recipes/new' do
  Recipe << Recipe.create(title: params[:title], ingredients: params[:ingredients], directions: params[:directions])
  redirect '/home'
end

get '/recipes/:id' do
  @recipe = Recipe.find(params[:id])
  erb :recipes
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

# get '/shecodes' do

# end

# post '/shecodes' do

#   redirect 'https://www.linkedin.com/uas/oauth2/authorization?response_type=code&client_id=758g2o239m2wrk&redirect_uri=https://127.0.0.1:9393/shecodes%2Fauth%2Flinkedin&state=06122015&scope=r_basicprofile'

# end



