require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end

  get "/" do
    erb :index
  end

  get "/signup" do
    erb :signup
  end

  post "/signup" do
    user = User.new(:name => params[:name], :username =>params[:username], :password => params[:password])
    if user.save  
      redirect "/login"
    else
      redirect "/failure"
    end
  end

  get "/login" do
    erb :login
  end
  
  get "/failure" do
    erb :failure
  end
end
