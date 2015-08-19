helpers do
  def logged_in?
    !session[:user_id].nil?
  end

  def login(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def current_user?
    @current_user != nil
  end

end
