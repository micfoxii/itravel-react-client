class UserController < ApplicationController

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
    
      post "/login" do
        user = User.find_by(:username => params[:username])
    
    
      get "/failure" do
        erb :failure
      end
    end
    