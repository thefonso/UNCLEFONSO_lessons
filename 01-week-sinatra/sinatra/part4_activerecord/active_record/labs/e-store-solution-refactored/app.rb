### REQUIRES, INCLUDES, AND CONFIG ###

require 'sinatra'
require 'sinatra/reloader'
require 'active_support/all'
require 'active_record'


# configure ActiveRecord: connect to postgres
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "clayton", # Put your postgres username here
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
get '/items' do
	@items = Item.order("created_at DESC").all
  erb :"items/index"
end


# new item page
get '/items/new' do 
	erb :"items/new"
end

# create item
post '/items/new' do
	@item = Item.new(params[:item])

	if @item.save
		redirect "/items/#{@item.id}"
	else
		erb :"items/new"
	end
end


# view indivdual item
get '/items/:id' do
	id = params[:id].to_i
	@item = Item.find(id)
	erb :"items/show"
end

# edit item
get '/items/:id/edit' do
	id = params[:id].to_i
	@item = Item.find(id)
	erb :"items/edit"
end

# update item
post '/items/:id' do
	id = params[:id].to_i
	@item = Item.find(id)
	@item.update_attributes(params[:item])

	redirect '/'
end

# # alternate update route
# post "/items/:id" do
#   @item = Item.find(params[:id])
#   if @item.update_attributes(params[:item])
#     redirect "/items/#{@item.id}"
#   else
#     erb :"items/edit"
#   end
# end


# delete item
get '/items/:id/delete' do
	id = params[:id].to_i
	@item = Item.find(id)
	@item.delete
	redirect '/'
end
