### What is Duck Typing
"If an object walks like a duck and talks like a duck, then the Ruby interpreter is happy to treat it as if it were a duck."

Duck Typing refers to Ruby being less concerned with the class of an object and more concerned with what methods can be called on it and what operations can be performed on it.

In Ruby, we would use respond_to? or might simply pass an object to a method and know that an exception will be raised if it is used inappropriately.

Example

```
#### Check in irb, whether the object defines the to_str method  
>> 'A string'.respond_to?(:to str)  
=> true  
>> Exception.new.respond_to?(:to_str)  
=> false  
>> 4.respond_to?(:to_str)  
=> false  
```

The above example is the simplest example of Ruby's philosophy of "duck typing:" if an object quacks like a duck (or acts like a string), just go ahead and treat it as a duck (or a string). 

Whenever possible, you should treat objects according to the methods they define rather than the classes from which they inherit or the modules they include.