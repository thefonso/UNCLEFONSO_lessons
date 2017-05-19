### REQUIRES, INCLUDES, AND CONFIG ###
require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_support/all'
require 'active_record'

# used with authentication
require 'digest/sha1'

# for logged-in user
enable :sessions

# configure ActiveRecord: connect to postgres
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "[USERNAME]", # Put your postgres username here
  :password => "",
  :database => "wdi_e_store"
)

# to display our sql in the console
ActiveRecord::Base.logger = Logger.new(STDOUT)

# include 'item' model
require_relative './models/user'
require_relative './models/item'




### ROUTES ###

before '/items*' do
	if !session[:user]
		redirect '/login'
	end
end

# index page
get '/' do
	if session[:user]
		redirect '/items'
	else
		erb :home
	end
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
	@item = Item.new
	@item.title = params[:title]
	@item.description = params[:description]
	@item.price = params[:price]
	@item.save!

	redirect "/items/#{@item.id}"
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

	title = params[:title]
	description = params[:description]
	price = params[:price]

	@item.title = title
	@item.description = description
	@item.price = price
	@item.save!

	redirect '/'
end

# # alternate update route
# put "/items/:id" do
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


###AUTHENTICATION###

# login
get '/login' do
	erb :login
end

# authenticate credentials
post '/login' do
	username = params[:username]
	password = Digest::SHA1.hexdigest(params[:password])
	user = User.find(:first, :conditions => {:username => username, :password => password})
	if user
		session[:user] = user
		redirect '/'
	else
		erb :login
	end
end


session = {
	:user => User
}


# logout
get '/logout' do
	session[:user] = nil
	redirect '/'
end

