require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :receipt	
end

post '/' do

	# Obtain the form data from params
	@service = params[:service].chomp
	@cost = params[:cost].chomp

	f = File.new('receipt.txt', 'w') # `w` Write-only

	# Write each line to the file
	f.puts("- Company Name: Particular Assembly Inc.")
	f.puts("- Good/Service Provided: #{@service}")
	f.puts("- Cost: $#{@cost}")
	f.puts("- Thank you for your patronage")

	f.close

	erb :receipt
end

