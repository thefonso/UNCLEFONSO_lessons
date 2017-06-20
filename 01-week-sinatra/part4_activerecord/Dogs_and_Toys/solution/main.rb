require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_support/all'
require 'active_record'


ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "[USERNAME]", #your postgres.app username
  :password => "",
  :database => "wdi"
)
# output ActiveRecord sql to console
ActiveRecord::Base.logger = Logger.new(STDOUT)



#Models
class Dog < ActiveRecord::Base
  attr_accessible :name, :photo, :breed
  has_many :toys
end

class Toy < ActiveRecord::Base
  attr_accessible :toy_type, :dog_id
  belongs_to :dog
end



#Sinatra
before do
  @nav_rows = Dog.all
end


#Routes
get '/' do
  erb :home
end

get '/dogs' do
  @rows = Dog.all
  erb :dogs
end

get '/dogs/new' do
  erb :new
end

post '/dogs/create' do
  dog = Dog.new
  dog.name = params[:name]
  dog.photo = params[:photo]
  dog.breed = params[:breed]
  dog.save
  redirect to('/dogs')
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

get '/dogs/:id' do
  @rows = Dog.find(params[:dog_id])
  erb :dogs
end


get '/dogs/:breed' do
  @rows = Dog.where(breed: params[:breed])
  erb :dogs
end



get '/dogs/:dog_id/toy' do
  @dog = Dog.find(params[:dog_id])
  erb :new_toy
end

post '/dogs/:dog_id/create_toy' do
  dog = Dog.find(params[:dog_id])
  toy = dog.toys.new
  toy.toy_type = params[:toy_type]
  toy.save
  redirect to('/dogs')
end
