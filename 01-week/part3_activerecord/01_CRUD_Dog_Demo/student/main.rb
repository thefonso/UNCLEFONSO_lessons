require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_support/all'
require 'pg'

before do
  sql = "select distinct breed from dogs"
  @nav_rows = run_sql(sql)
end

get '/dogs/:dog_id/edit/' do
  # string to store SQL to find a dog 
  sql = "select * from dogs where id = #{params['dog_id']}"
  # execute the SQL
  rows = run_sql(sql)
  # @row to store the result of SQL query
  @row = rows.first
  # render new erb
  erb :new
end

post '/dogs/:dog_id' do
  # string to store SQL to update a dog 
  sql = "update dogs set name='#{params['name']}', photo'#{params['photo']}' , breed='#{params['breed']}', where id = #{params['dog_id']}"
  # execute the SQL
  run_sql(sql)
  # go back to /dogs
  redirect to('/dogs')
end

post '/dogs/:dog_id/delete' do
  # string to store SQL to delete a dog 
  sql = "delete from dogs where id = #{params['dog_id']}"
  # execute the SQL
  run_sql(sql)
  # go back to /dogs
  redirect to('/dogs')
end

get '/dogs/:breed' do
  # string to store SQL query for a given breed
  sql = "select * from dogs where breed = '#{params['breed']}'";
  # @rows to store the result of SQL query
  @rows = run_sql(sql)
  # dogs erb
  erb :dogs
end

get '/' do
  # home erb
  erb :home
end

get '/new' do
  # new erb
  erb :new
end

get '/dogs' do
  # string to store SQL query for all dogs
  sql = "select * from dogs"
  # @rows to store the result of SQL query
  @rows = run_sql(sql)
  # render dogs erb
  erb :dogs
end

post '/create' do
  # string of SQL that will write to db
  sql = "insert into dogs (name, photo, breed) values ('#{params['name']}', '#{params['photo']}', '#{params['breed']}')"
  # write to db
  run_sql(sql)
  # back to /dogs
  redirect to('/dogs')
end

def run_sql(sql)
  # connect to dogsdb
  conn = PG.connect(:dbname => 'dogdb', :host => 'localhost')
  # execute the SQL in the argument
  result = conn.exec(sql)
  # close db connection
  conn.close
  # return the result of SQL query
  result
end
