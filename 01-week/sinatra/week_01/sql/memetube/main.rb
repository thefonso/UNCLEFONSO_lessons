require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_support/all'
require 'pg'

before do
  sql = "select distinct genre from videos"
  @nav_rows = run_sql(sql)
end

get '/videos/:video_id/edit/' do
  sql = "select * from videos where id = #{params['video_id']}"
  rows = run_sql(sql)
  @row = rows.first
  erb :new
end

post '/videos/:video_id' do
  sql = "update videos set title='#{params['title']}', description='#{params['description']}', url='#{params['url']}', genre='#{params['genre']}' where id = #{params['video_id']}"
  run_sql(sql)
  redirect to('/videos')
end

post '/videos/:video_id/delete' do
  sql = "delete from videos where id = #{params['video_id']}"
  run_sql(sql)
  redirect to('/videos')
end

get '/' do
  erb :home
end

get '/new' do
  erb :new
end

post '/create' do
  sql = "insert into videos (title, description, url, genre) values ('#{params['title']}', '#{params['description']}', '#{params['url']}', '#{params['genre']}')"
  run_sql(sql)
  redirect to('/videos')
end

get '/videos' do
  sql = "select * from videos"
  @rows = run_sql(sql)
  erb :videos
end

get '/videos/:genre' do
  sql = "select * from videos where genre = '#{params['genre']}'";
  @rows = run_sql(sql)
  erb :videos
end

def run_sql(sql)
  conn = PG.connect(:dbname =>'memetube', :host => 'localhost')
  result = conn.exec(sql)
  conn.close
  result
end
