require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_support/all'
require 'active_record'
require 'pg'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => ENV['PG_USERNAME'], #your postgres.app username
  :password => "",
  :database => "dogdb"
)

class Dog < ActiveRecord::Base

end

before do
  @nav_rows = Dog.all
end

get '/dogs/:dog_id/edit/' do
  @row = Dog.find(params[:dog_id])
  erb :new
end

post '/dogs/:dog_id' do
  dog = Dog.find(params[:dog_id])
  dog.name = params[:name]
  dog.photo = params[:photo]
  dog.breed = params[:breed]
  redirect to('/dogs')
end

post '/dogs/:dog_id/delete' do
  dog = Dog.find(params[:dog_id])
  dog.delete
  redirect to('/dogs')
end

get '/dogs/:breed' do
  @row = Dog.find_by_breed(params[:breed])
  erb :dogs
end

get '/' do
  erb :home
end

get '/new' do
  erb :new
end

get '/dogs' do
  @rows = Dog.all
  erb :dogs
end

post '/create' do
  dog = Dog.new
  dog.name = params[:name]
  dog.photo = params[:photo]
  dog.breed = params[:breed]
  dog.save
  redirect to('/dogs')
end

