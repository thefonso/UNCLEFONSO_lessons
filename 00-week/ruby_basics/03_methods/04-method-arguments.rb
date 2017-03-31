# methods can be made to receive values as arguments. See how the method receives the input argument "website"

website = "apple.com"
def browser_goto(website) # !> previous definition of browser_goto was here
  website     # => "apple.com"
  "Direct your browser towards #{website}"
end

browser_goto(website)   # => "Direct your browser towards apple.com"

# NOTE: You know how you and I can go to the same website, but even though we both see it in our browser
# there is only one website?
# 
# Objects are the same way, when you pass one in, you can access it from the variable outside
# and inside the method, but there is still just one object.

def browser_goto(website) # !> method redefined; discarding old browser_goto
  website.object_id     # => 70138120945060
  "Direct your browser towards #{website}"
end

# the same object id means they are the same object
website.object_id       # => 70138120945060
browser_goto(website)   # => "Direct your browser towards apple.com"
