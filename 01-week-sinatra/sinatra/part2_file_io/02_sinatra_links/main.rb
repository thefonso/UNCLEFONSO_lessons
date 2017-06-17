require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :home
end

get '/manual_links' do
  @links = ['http://reddit.com', 'http://news.ycombinator.com', 'http://techcrunch.com', 'http://macrumors.com', 'http://gizmodo.com']
  erb :links
end

get '/links' do
  link_file = File.new('links.csv', 'r')
  @links = []

  link_file.each do |link|
    parsed_link = link.to_s.split(',')
    @links << {site_name: parsed_link[0], site_link: parsed_link[0]}
  end

  link_file.close
  erb :links
end