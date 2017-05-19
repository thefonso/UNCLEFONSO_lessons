# A method to check whether something is actually awesome or not. Some are obvious. 
# But it only works if you pass in an argument to check.

AAWESOME_THINGS = ['bagels', 'surfing', 'coding', 'SQL']

class String
  def awesome?
    if AWESOME_THINGS.include?(self)
      return "• #{self} is awesome"
    else
      raise StandardError, self
    end
  end
end

# Let's check to see if these things are awesome. 
# Start using rescues here to make sure they work no matter what.


begin
  puts "bagels".awesome?
  puts "surfing".awesome?
  puts "traffic".awesome?
  puts "coding".awesome?
  puts "the405at7pm".awesome?
  puts "SQL".awesome?
  puts "FORTRAN".awesome?
rescue StandardError => e
  puts "Uh-oh, #{e} is not awesome"
end
