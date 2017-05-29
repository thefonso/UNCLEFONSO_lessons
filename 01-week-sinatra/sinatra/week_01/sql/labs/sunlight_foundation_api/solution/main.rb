# Sunlight App
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require 'sunlight'
require 'sinatra/activerecord'

# register here: http://sunlightfoundation.com/api/
# be sure to verify and activate your account
Sunlight::Base.api_key = ENV['SUNLIGHT_API_KEY']

# Configure the database
# Create a db by running $ createdb sunlight_db
set :database, {
  adapter: 'postgresql',
  database: 'sunlight_db',
  host: 'localhost'
}
# Be sure to run rake db:migrate to add your tables
# It will create the following table:

# == Schema Info
# Table name: politicians
#
# firstname       :string
# firstname       :string
# lastname        :string
# party           :string
# phone           :string
# state           :string
# twitter_id      :string
# in_office       :boolean
# votesmart_id    :string
# bioguide_id     :string

# Configure ActiveRecord to interact with a politicians table
class Politician < ActiveRecord::Base
end

get '/' do
  # display an input to search by zipcode
  # list all politicians saved to the database
  @favorites = Politician.all
  erb :index
end

get '/search' do
  # Search the Sunlight API by zipcode
  zipcode = params[:zipcode]
  # Display all available politicians
  @results = Sunlight::Legislator.all_in_zipcode(zipcode)
  erb :search
end

post '/favorite/:bioguide_id' do
  bioguide_id = params[:bioguide_id]
  favorite = Sunlight::Legislator.all_where(:bioguide_id => bioguide_id).first

  politician = Politician.create

  politician.firstname = favorite.firstname
  politician.lastname = favorite.lastname
  politician.party = favorite.party
  politician.phone = favorite.phone
  politician.state = favorite.state
  politician.twitter_id = favorite.twitter_id
  politician.in_office = favorite.in_office
  politician.save
  # Search the Sunlight API for a particular politician
  # save that politician to the database
  redirect to '/'
end