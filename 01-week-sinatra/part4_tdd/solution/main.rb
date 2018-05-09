require 'sinatra'

get '/' do
  "Hello, world" 
end

get '/Rush/Alfonso' do
  "Alfonso's username is arush"
end

get '/Rush/Alfonso/Unclefonso' do
  "Unclefonso's username is uarush"
end

get '/Matsumoto/Yukihiro' do
  "Yukihiro Matsumoto's username is ymatsu"
end
