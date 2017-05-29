require "sinatra"
require "sinatra/contrib/all"

# When your computer sends a request to a server, it is sending both an address and a verb to a router.
# Most of the time, the verb is a GET. The /hello is the path. This information is sent to Sinatra, and if it is successful, the string is returned.
get "/hello" do
  "Hello WDI"
end

# What if you wanted a homepage? Wouldn’t you just use / (or no path)? Try it
get "/" do
  "This is the homepage"
end

# Set up a path for /yourname that has a greeting to you.
get '/yourname' do
  'your name'
end

# Now what if we wanted to include a name, but not hard code it?
get "/name/:first" do
  "Hello, #{params[:first]}!"
end

# Multiple parameters?
get "/name/:first/:last/:age" do
  "Your name is #{params[:first]} #{params[:last]}. You are #{params[:age]} years old."
end

# Do Ruby operations on the parameters first?
get "/multiply/:x/:y" do
  result = params[:x].to_f * params[:y].to_f
  "the result is #{result}"
end