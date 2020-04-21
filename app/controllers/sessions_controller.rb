class SessionsController < ApplicationController
  get '/login' do
    redirect_if_logged_in
    erb :"sessions/login"
  end

  post '/login' do
    #find the user
    @user = User.find_by(email: params[:email])
    #check the password
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/posts"
    else
      redirect "/login"
    end
    # redirect accordingly
  end

  get '/logout' do
    session.clear
    redirect "/login"
  end

end