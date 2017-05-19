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
  @account_sid = "AC4af5936d0ed441b9f4578c1c951be519"
  @auth_token = "d409d52e7f3d2ee809c94b4d68910013"
  
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
