require File.dirname(__FILE__) + '/../main'
require 'rack/test'

set :environment, :test

RSpec.describe 'The HelloWorld App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  context 'get "/"' do
    before  { get '/' }
    specify { expect(last_response).to be_ok }
    specify { expect(last_response.body).to include "Hello, world" }
  end

  context 'get "/Rush/Alfonso"' do
    before  { get '/Rush/Alfonso' }
    specify { expect(last_response).to be_ok }
    specify { expect(last_response.body).to include "Alfonso's username is arush" }
  end

  context 'get "/Rush/Alfonso/Unclefonso"' do
    before  { get '/Rush/Alfonso/Unclefonso' }
    specify { expect(last_response).to be_ok }
    specify { expect(last_response.body).to include "Unclefonso's username is uarush" }
  end

  context 'get "/Matsumoto/Yukihiro"' do
    before  { get '/Matsumoto/Yukihiro' }
    specify { expect(last_response).to be_ok }
    specify { expect(last_response.body).to include "Yukihiro Matsumoto's username is ymatsu" }
  end
end
