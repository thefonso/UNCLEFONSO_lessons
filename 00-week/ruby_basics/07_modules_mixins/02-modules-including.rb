# Modules have the feel of a class, you define methods inside of them.
# But since they cannot be instantiated, you must declare that the
# module be included in a class. 
#
# This is a mixin. 
#
# The module will be added to the inheritance chain, making its methods available.

module OurModule
  def meth
    'method from OurModule'
  end
end

# When we include OurModule in a class, it becomes an ancestor
class OurClass
  include OurModule
end

OurClass.ancestors # => [OurClass, OurModule, Object, Kernel, BasicObject]

# This means its instances can invoke OurModule's methods

obj = OurClass.new
obj.meth # => "method from OurModule"
