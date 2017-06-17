### REQUIRES, INCLUDES, AND CONFIG ###
require 'sinatra'
require 'sinatra/reloader'
require 'active_support/all'
require 'active_record'


# configure ActiveRecord: connect to postgres
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "[USERNAME]", # Put your postgres username here
  :password => "",
  :database => "wdi_e_store"
)

# include 'item' model
require_relative './models/item'




### ROUTES ###

# index page
get '/' do
	redirect '/items'
end

# index page of items
### Load all of the items, with the newest ones first (ordered by date created)
get '/items' do

  erb :"items/index"
end


# new item page
get '/items/new' do 
	erb :"items/new"
end

# create item
### Create the item model and redirect to viewing that item (/item/:id)
post '/items/new' do 

	redirect "/items/#{@item.id}"
end


# view indivdual item
### Load the item and make it available to the view
get '/items/:id' do

	erb :"items/show"
end

# edit item
### Load the item and make it available to the view
get '/items/:id/edit' do

	erb :"items/edit"
end

# update item
### Save changes to item and redirect to /
post '/items/:id' do

end


# delete item
### Remove the item and redirect to /
get '/items/:id/delete' do

end
