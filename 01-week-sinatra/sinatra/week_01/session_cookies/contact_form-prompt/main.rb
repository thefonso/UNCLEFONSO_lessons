require 'sinatra'
require 'sinatra/reloader'


get '/' do
  erb :form
end

post '/' do

  redirect '/view'
end

get '/view' do

  erb :view
end
