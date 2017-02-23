class UsersController < ApplicationController

  def new
    @user = User.new
  end

  # /users/new
  get '/users/new' do
    erb :new
  end

  # create
  post '/users' do
    @user = User.create(params)
    redirect "/users/#{@user.id}"
  end

  # index
  get '/users' do
    erb :index
  end

  # show
  get '/user/:id' do
    @user = User.find(params[:id])
    erb :show
  end

  # edit
  get '/user/:id/edit' do
    @user = User.find(params[:id])
    erb :edit
  end

  # update
  patch '/user/:id' do
    @user = User.find(params[:id])
    @user.update(params)
    redirect '/user/:id'
  end

  # destroy
  delete '/user/:id' do
    @user = User.find(params[:id])
    @user.destory #assumes delete input included in show page
    erb :delete #assumes delete erb page "#{@user.name} was successfully deleted"
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
