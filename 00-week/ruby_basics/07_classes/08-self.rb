# CLASSES: self
#
# At any given time in Ruby, you are in the context
# of some object. Right now we're in the main object.
# Which all of ruby lives under.

# You can see what object you're in by looking at self.

self # => main

class String
  self # => String
end


class Example
  self # => Example

  @abc = 123
  @abc  # => 123
end
