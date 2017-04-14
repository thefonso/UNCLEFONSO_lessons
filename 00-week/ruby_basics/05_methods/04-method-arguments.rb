# METHODS: arguments
#
# methods can be made to receive values as arguments. See how the method receives the input argument "website"

website = "apple.com"
def browser_goto(website)  
  website.object_id # => 70324133966640
  "Direct your browser towards #{website}"
end

website.object_id # => 70324133966640
browser_goto(website)   # => "Direct your browser towards apple.com"


