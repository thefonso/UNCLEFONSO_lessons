# METHODS: singleton method
# A singleton method is an instance method associated with one specific object.
# You create a singleton method by including the object in the definition:

class Foo
end

foo = Foo.new
bar = Foo.new

def foo.hello
  p "Hello"
end

foo.hello # => "Hello"
bar.hello # => 
# ~> -:16:in `<main>': undefined method `hello' for #<Foo:0x007f7f92877620> (NoMethodError)
# >> "Hello"
