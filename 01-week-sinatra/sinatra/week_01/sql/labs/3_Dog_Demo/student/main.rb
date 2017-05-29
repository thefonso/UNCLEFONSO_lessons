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
  # execute the SQL
  # @row to store the result of SQL query
  # render new erb
end

post '/dogs/:dog_id' do
  # string to store SQL to update a dog 
  # execute the SQL
  # go back to /dogs
end

post '/dogs/:dog_id/delete' do
  # string to store SQL to delete a dog 
  # execute the SQL
  # go back to /dogs
end

get '/dogs/:breed' do
  # string to store SQL query for a given breed
  # @rows to store the result of SQL query
  # dogs erb
end

get '/' do
  # home erb
end

get '/new' do
  # new erb
end

get '/dogs' do
  # string to store SQL query for all dogs
  # @rows to store the result of SQL query
  # render dogs erb
end

post '/create' do
  # string of SQL that will write to db
  # write to db
  # back to /dogs
end

def run_sql(sql)
  # connect to dogsdb
  # execute the SQL in the argument
  # close db connection
  # return the result of SQL query
end
