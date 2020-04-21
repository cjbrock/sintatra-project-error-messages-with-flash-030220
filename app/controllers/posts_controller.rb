class PostsController < ApplicationController
  get '/posts' do
    redirect_if_not_logged_in
    if current_user.posts != []
      @posts = current_user.posts.all
    else
      @posts = Post.all
    end
    erb :"posts/index"
  end

  get '/posts/new' do
    redirect_if_not_logged_in
    @users = User.all
    erb :"posts/new"
  end

  post '/posts' do
    post = Post.new(params)
    if post.save
      redirect "/posts/#{post.id}"
    else
      binding.pry
      redirect "posts/new"
    end
  end

  get '/posts/:id/edit' do
    redirect_if_not_logged_in
    @users = User.all
    @post = Post.find_by_id(params[:id])
    if @post.user.id == current_user.id
      erb :"posts/edit"
    else
      redirect "/posts"
    end
  end

  patch '/posts/:id' do
    @post = Post.find_by_id(params[:id])
    params.delete("_method")
    if @post.update(params)
      redirect "/posts/#{@post.id}"
    else
      redirect "/posts/#{@post.id}/edit"
    end
  end

  get '/posts/:id' do
    redirect_if_not_logged_in
    @post = Post.find_by_id(params["id"])
    erb :"posts/show"
  end

  delete '/posts/:id' do
    @post = Post.find_by_id(params[:id])
    if @post.user.id == current_user.id
      @post.destroy
      redirect "/posts"
    else
      redirect "/posts"
    end
  end


end