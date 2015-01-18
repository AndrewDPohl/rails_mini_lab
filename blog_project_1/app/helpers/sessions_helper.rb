module SessionsHelper
  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  def logout
    @current_user = nil
    session[:user_id] = nil
  end

  def logged_in?
    if current_user == nil
      redirect_to "/login"
    end
  end

  def current_user
    if session[:user_id] == nil
      @current_user = nil
    else
      @current_user = @current_user || User.find_by(id: session[:user_id])
    end
  end
  
end
