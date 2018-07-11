#####introduction
We've seen a few times when the 'right' techniques cause our programs to be faster, smaller, easier to debug, and overall improves our code.  Recursion is another powerful and common technique used in creating better programs. It has a lot to do with the funcitonal paradigm of programming (compared to Procedural and Object Oriented) since we're treating the output of one method(function) as the argument(input) to another.  To gain a solid intuition for recursion it's helpful to look at some computational examples.

As a first example, let's create a 'countdown' method. It's going to take a starting number as an argument and count down by decrementing it to zero.  There's no need to do it recursively but the computation is simple and intuitive to let us get a better feel for recursion. You might go about it like this:

```ruby
  def countdown(num)
    while num > 0
      puts num-=1
    end
   	  puts "Blastoff!"
  end
  countdown(10)
```

That's pretty good, but we got lucky in being able to figure out the simple pattern that's easy to do using a `while` loop.  To be more efficient let's think about the point writing the `countdown` method in the first place.  As long as we know how to get to the next step (num-1), we can just call countdown(num-1) to handle the rest.  We'll set up the `countdown` method to keep calling itself with the new parameter that's a step closer to our final solution and not worry about the rest (since we've taught it how to take the next step).  The last question we have to answer is: how will it know when to stop? This is done with a termination condition:

```ruby
  def countdown_r(num)
    num > 0 ? countdown(num-1) : "Blastoff!"
  end
  puts countdown_r(10)
```

"Blastoff!" is returned only when the argument of `countdown_r` is 0, but it's exactly what we wanted.

#####anatomy of recursion
Recrusive solutions have two main parts:

1. A recipe for getting a step closer to the solution.  By engineering a method to know how to take the next step we can let it delegate the rest of the process to itself for all the remaining steps
2. Termination conditions.  The biggest advantage of recursion is also it's biggest danger:
    
    "The power of recursion evidently lies in the possibility of defining an infinite set of objects by a finite statement. In the same manner, an infinite number of computations can be described by a finite recursive program, even if this program contains no explicit repetitions." *(Wirth, Niklaus (1976). "Algorithms + Data Structures = Programs". Prentice-Hall. p. 126)*
    
	Improper termination conditions will cause the method to call itself recursively in an infinite loop and cause all kind of overflow issues or silent `freezing`.  The following method will cause a `stack level too deep (SystemStackError)` error indicating that the runtime environment ran out of memory space for our program (`terminal$ ulimit -s` shows how much space(kbytes) is allocated):

```ruby	
  def infinite_method
  	infinite_method
  end
```

#####the strategy
Often times a complicated computational problem can be broken up into simpler versions of itself:

- 100! is just 100 * 99!
- writing "abcdefg" backwards is just "g"+("abcdef" written backwareds)
- traversing:

		<div>
			<div>
				<div>Hello</div>
				<div>World</div>
			</div>
		</div>
is like going into the first div and traversing:
		
		<div>
			<div>Hello</div>
			<div>World</div>
		</div>
These are examples of an algorithm design paradigm called [divide-and-conquer](http://en.wikipedia.org/wiki/Divide_and_conquer_algorithm).  As it's name suggests, the divide and conquer approach is used to separate a complex algorithm into smaller/simpler components and tackle those one at a time.  Going back to the factorial example, in the first bullet point, we can just keep applying the simplification until we end up with:

	100! is 100 * … * 2 * 1 * 0!
	
	But what is 0!? That's the termination condition and the case of a factorial it should return 1.  Notice that every step in the iteration of applying the n! -> n * (n-1)! reduction to 100 always gets us closer to the termination condition.
