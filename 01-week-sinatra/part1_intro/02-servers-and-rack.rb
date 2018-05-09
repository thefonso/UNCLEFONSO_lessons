# Ruby web applications usually use an interface called Rack.
# Before Rack existed developers on different server platforms had to code things differently between servers
# So if you ever needed to move your app to a new server this became problimatic...thus Rack was born.
# Rack is a peice of software that sits in the middle between Ruby applications 
# like Sinatra and Rails and the computer servers that they sit upon.
# It acts as an interface communicating between the two.

# Ruby app (Sinatra or RAILS) <=> Rack interface <=> Internet Server 

# You can read these articles for a better understanding...
# https://www.amberbit.com/blog/2011/07/13/introduction-to-rack-middleware/
# https://stackoverflow.com/questions/2256569/what-is-rack-middleware
# https://blog.engineyard.com/2015/understanding-rack-apps-and-middleware
