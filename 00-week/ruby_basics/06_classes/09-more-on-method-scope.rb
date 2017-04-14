# CLASSES: more on method scope
#
# So methods can actually see instance variables and methods
# on their object.

class Example
  
  def method1
    self # => #<Example:0x007ffd40937c78>
    @var = 123
    method2 
    @var # => 500
  end
  
  def method2
    self # => #<Example:0x007ffd40937c78 @var=123>
    @var # => 123
    @var = 500
  end
  
end

Example.new.method1 # => 500
