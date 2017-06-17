# Are +, -, * ... operators?

+, -, and the like are not operators but method calls. They can, therefore, be overloaded by new definitions.

``` 	 	
class MyString < String
  def -(other)            # New method
    self[0...other.size]  # self truncated to other's size
  end
end
```
However, the following are built-in control structures, not methods, which cannot be overridden.

 	 	
=, .., ..., !, not, ||, &&, and, or, ::
To overload or to define unary operators, you can use +@ and -@ as the method names.

= is used to define a method to set an attribute of the object:

``` 	 	
class Test
  def attribute=(val)
    @attribute = val
  end
end
t = Test.new
t.attribute = 1
```

If operators such as + and - are defined, Ruby automatically handles the self assignment forms (+=, -= and so on).


#All these objects are fine, but does Ruby have any simple functions?

Yes and no. Ruby has methods that look like functions in languages such as C or Perl:

```
def writeln(str)
  print(str, "\n")
end

writeln("Hello, World!")

Produces:

Hello, World!
```
However, they're actually method calls with the receiver omitted. In this case, Ruby assumes the receiver is self.

So, writeln resembles a function but it's actually a method belonging to class Object and sent as a message to the hidden receiver self. Ruby is a pure object-oriented language..

Of course you can use such methods as if they were functions.

[http://www.rootr.net/rubyfaq-7.html](http://www.rootr.net/rubyfaq-7.html)