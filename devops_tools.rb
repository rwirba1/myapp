require 'sinatra'

# Define a route for the home page
get '/' do
  erb :home
end

# Define a route for the login page
get '/login' do
  erb :login
end

# Define a route for the DevOps tools page
get '/tools' do
  erb :tools
end

# Handle the login form submission
post '/login' do
    if params[:username] == 'student' && params[:password] == 'password'
      redirect '/tools'
    else
      erb :login
    end
  end