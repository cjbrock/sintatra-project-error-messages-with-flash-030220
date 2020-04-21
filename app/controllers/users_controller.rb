class UsersController < ApplicationController

  get '/users/signup' do
    erb :'/users/signup'
  end

  post '/users' do
    # create user
    @user = User.new(params)
    # save user
    if @user && @user.save
      # set session id
      session[:user_id] = @user.id
      # redirect
      redirect "/posts"
    # what if our user doesn't save?
    else
      erb :"/users/signup"
    end
  end

end