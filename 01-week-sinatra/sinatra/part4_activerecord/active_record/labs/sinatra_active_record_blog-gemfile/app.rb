require 'sinatra'
#fixes an incompatibility issue with 'reloader' and Tux shell
require 'sinatra/reloader' unless defined? Tux
require 'sinatra/activerecord'

require_relative 'post'


#index page
get '/' do
	redirect '/posts'
end

get '/posts' do
	@posts = Post.all.order("created_at DESC")
  	erb :"posts/index"
end

delete '/post/:id' do
	id = params[:id].to_i
	@post = Post.find(id)
	@post.delete
	redirect '/'
end

#new post page
get '/post/new' do 
	erb :"posts/new"
end

#new post route
post '/post/new' do 
	@post = Post.new
	@post.title = params[:title]
	@post.body = params[:body]
	@post.save!

	redirect "/post/#{@post.id}"
end

#show page
get '/post/:id' do
	id = params[:id].to_i
	@post = Post.find(id)
	erb :"posts/show"
end

#edit page
get '/post/:id/edit' do
	id = params[:id].to_i
	@post = Post.find(id)
	erb :"posts/edit"
end

#update route
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

# #alternate update route
# put "/posts/:id" do
#   @post = Post.find(params[:id])
#   if @post.update_attributes(params[:post])
#     redirect "/posts/#{@post.id}"
#   else
#     erb :"posts/edit"
#   end
# end

get '/post/:id' do
	id = params[:id].to_i
	@post = Post.find(id)
	erb :"posts/show"
end

