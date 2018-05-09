require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/cookies'

enable :sessions
set :session, :expire_after => 2592000

get '/' do
  erb :form
end

post '/' do
  response.set_cookie(:firstname,  params[:firstname])
  response.set_cookie(:lastname,  params[:lastname])
  response.set_cookie(:email,  params[:email])
  session[:phone] = params[:phone]
  session[:comments] = params[:comments]
  redirect '/view'
  #erb :view
end

get '/view' do
  @firstname = cookies[:firstname]
  @lastname = cookies[:lastname]
  @email = cookies[:email]
  @phone = session[:phone]
  @comments = session[:comments]

  erb :view
end
