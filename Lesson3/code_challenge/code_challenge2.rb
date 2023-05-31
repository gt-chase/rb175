require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'
require 'yaml'

before do 
  @users = YAML.load_file("users.yaml")
end

helpers do # not sure how to test this yet.
  def count_interests(users)
    total_interests = 0
    users.each do |name, uses|
      total_interests += uses[:interests].size
    end
    total_interests
  end
end

get "/" do
  redirect "/users"
end

get "/users" do
  erb :users
end

get "/:user_name" do
  @user_name = params[:user_name].to_sym
  @email = @users[@user_name][:email] # overall hash[specific name which returnes the value which is another hash][a key from the sub hash to return the value]
  @interests = @users[@user_name][:interests]

  erb :user
end