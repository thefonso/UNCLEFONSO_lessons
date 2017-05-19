require 'open-uri'

# Two example URLs – one that'll work, one that won't
url = "http://cnn.com"
#url = "http://iamnotarealdomain.com"

# Open the URL and read the lines
begin
  web_contents  = open(url)
rescue
  puts "Could not open #{url}"
else
  web_contents.each_line do |line|
    puts line
  end 
end
