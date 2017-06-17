require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  # Any strings here will be rendered in the browser
  "This is the home page"
end

get '/hello/:name' do
  "Hello #{params[:name]}! You can pass in parameters using params[:parameter_name]"
end

get '/name/:first/:last' do
  # Demonstrating Dynamic URLs #
  "You can pass in multiple parameters #{params[:first]} #{params[:last]}!"
end

get '/oh_hai/:name' do
  # We can use templates. By default this uses the layout.erb
  # and renders the output of the erb file into its yield block
  @name = params[:name]
  erb :hello
end