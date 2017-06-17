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
  :database => "wdi_blog"
)

# include 'post' model
require_relative 'post'




### ROUTES ###

# index page
get '/' do
	redirect '/posts'
end

# index page of posts
get '/posts' do
	@posts = Post.order("created_at DESC").all
  erb :"posts/index"
end


# new post page
get '/post/new' do 
	erb :"posts/new"
end

# create post
post '/post/new' do 
	@post = Post.new
	@post.title = params[:title]
	@post.body = params[:body]
	@post.save!

	redirect "/post/#{@post.id}"
end


# view indivdual post
get '/post/:id' do
	id = params[:id].to_i
	@post = Post.find(id)
	erb :"posts/show"
end

# edit post
get '/post/:id/edit' do
	id = params[:id].to_i
	@post = Post.find(id)
	erb :"posts/edit"
end

# update post
post '/post/:id' do
	id = params[:id].to_i
	@post = Post.find(id)

	title = params[:title]
	body = params[:body]

	@post.title = title
	@post.body = body
	@post.save!

	redirect '/'
end

# # alternate update route
# put "/posts/:id" do
#   @post = Post.find(params[:id])
#   if @post.update_attributes(params[:post])
#     redirect "/posts/#{@post.id}"
#   else
#     erb :"posts/edit"
#   end
# end


# delete post
get '/post/:id/delete' do
	id = params[:id].to_i
	@post = Post.find(id)
	@post.delete
	redirect '/'
end
