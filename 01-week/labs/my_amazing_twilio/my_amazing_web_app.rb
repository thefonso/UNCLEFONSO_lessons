require 'twilio-ruby'
require 'sinatra'
require 'rack-flash'

enable :sessions
set :session_secret, 'super secret'
use Rack::Flash

get '/' do
  erb :index
end

post '/submit' do
  @message = "Someone thought your image was #{params[:answer]}"
  
  # Change these to match your Twilio account settings 
  @account_sid = "<YOUR_ID_NUMBER>"
  @auth_token = "<YOUR_TOKEN>"
  
  # Set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new(@account_sid, @auth_token)
    
  @account = @client.account
  @sms = @account.sms.messages.create({
    :from => '+13475351163', 
    :to => '+16462837437',
    :body => @message
  })
  
  flash[:notice] = "SMS sent: #{@message}"
  redirect '/'
end
