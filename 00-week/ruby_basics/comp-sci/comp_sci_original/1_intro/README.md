#Computer Science Intro [1]

#Morning

###Learning Objectives:
* Explain data types
* Explain the difference between loosely and strongly typed languages and the implications
* Explain the difference between interpreted vs compiled languages and the implications
* Convert between binary, hexadecimal and decimal numbers
* Explain why binary and hexadecimal numbers are so prevalent in computers (as opposed to decimal)

###Agenda:

* Data types: integer and floats
* loosely typed and strongly typed
* interpreted vs compiled languages
* What is Binary? What is it used for?
* Converting from Decimal and Binary and vice versa
* What is Hexadecimal? What is it used for?
* Converting from Decimal and Hexadecimal and vice versa
* Converting from Binary and Hexadecimal and vice versa


#Afternoon

###Learning Objectives

* Explain what Big-O notation is and why it is useful
* Explain how the Big-O runtime of a program is affected by:
	* loops
	* nested loops 
	* consecutive statements
	* if/else statements
* Explain the time complexity of common array methods (accessing, inserting, removing)
* Use Benchmarking in Ruby to verify performance
* It's important that students build an intuition about worst-case time complexity


###Agenda
* What is time Complexity & Big-O notation?
 	* A way to measure how a function grows, disregarding constants.
	* Can be used for space, time, call rates, etc, though is frequently mentioned in the context of time (and space, to a slightly lesser extent).
	* Introduce more formal definition: f(n) < g(n) * k for some k

* List common complexities and graphs of how they grow: 
	* **O(1): Constant.** Example: Look on page 5 in the phone book to find what you’re looking for
	* **O(logn): Log.** Example Do a binary search on the phone book to find what you’re looking formal
	* **O(n): Linear.** Example: Look through each page, starting with page 1, in the phone book to find what you’re looking for
	* **O(nlogn).** Example: All the names in a phone book are out of order, sort them
	* **O(n^2): Quadratic.** Example: For every name in the phone book, look through the entire phone book starting at page 1 to see how many people have the same name
	* **O(2^n): Exponential.** Example (not relating to phone books): Test all possible combinations of a password

* Give a code snippet example and explain how the Big-O runtime of a program is affected by each of the following:
	* loops
	* nested loops
	* consecutive statements
	* if/else statements

* Demonstrate using profiling in Ruby to verify performance for the above
* http://ruby-prof.rubyforge.org/

* LAB: Refactor some poorly written / slow ruby code to reduce the time complexity / runtime.

#Homework

* Hex to RGB Converter
	* RGB to Hex
	* Hex to RGB
	* Add a slider for opacity and do RGBA
	* End result will do something like [this](http://hex2rgba.devoth.com/)
	
#Resources
* [Intro to Algorithms](http://www.teaching-materials.org/algorithms/)
