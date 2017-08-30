
#Error Management:
#BEGIN / RESCUE / ELSE / ENSURE
##LESSON PLAN: 




### Description

Introduce concept of TRY / EXCEPT / FINALLY  

Ruby syntax: BEGIN / RESCUE / ELSE / ENSURE  

**Usage recommendation:**

Whenever accessing resources you don't control, such as external sites, api's, uploaded files, upload/download operations  

Then it is good practice to start working with rescues – they will save you when there are errors.

**The errors in the code examples are there deliberately.  The object in this module is *not* to fix the code, it's to handle errors.**   

Write exception-handling code that will avoid Rails error screens, and be informative if and when something breaks..

### OBJECTIVES
- Not look like an idiot when something goes wrong in production  
- Understand the concept of error recovery
- Learn the syntax of error recovery
- Write code to recover from errors

##CHALLENGE FOLDER
#### 01. Basic Rescue

Unfortunately, you can't add together two totally different types of objects, and we've got here a string & and integer. Rather than making that work, wrap the example in a ``begin/rescue/else/end`` that will explain when it breaks, *why* it can't be done.

#### 02. Rescue from a Bad Request

In this, we'll use the ``open-uri`` library that comes with Ruby to grab the contents of a webpage and spit it out. This works great – unless there's a url that doesn't work. We've included one that will, and another that won't. Write some supporting code that'll ``put`` a helpful error message out saying it didn't work with the URL we put in.

#### 03. Ensuring *Something* Happens

Ruby's ``rescue`` has a few more methods than just ``begin``, ``rescue``, ``else``, and ``end`` – research and figure out a small extra catcher that'll make sure to ``puts`` something. A nice friendly comment about the URL no matter what.

#### 04. Descriptive Rescues

Ruby's rescue lets you specify which error types you want to rescue from, and the default is the generic ``StandardError``, which will contain at least some helpful information about what went wrong. 

Research how to ``rescue`` from ``StandardError`` and use the output of it to ``puts`` a more descriptive error to the terminal.

#### 05. Calling Errors When You Need Them!

In Ruby, *everything* is an object, including the errors that get called. But maybe, when something goes wrong, you want to call a specific error, and give a particular message.

In this example, we've opened up our String class and added our own custom method, to see if a string is awesome or not. If something isn't awesome, figure out how you can call a ``StandardError`` and tell it what message you want passed in.

#### 06. Custom Errors Are More Descriptive, and Every Error Is An Object

Sometimes it's more helpful to call a custom error, one of your own making – sometimes that can help be more descriptive for when you're trying to do a certain thing when an error happens. Since every error is a Ruby object, you can make on yourself! 

Using our method from last time, make a custom error class, call it when something *isn't* awesome, and then write a ``begin/rescue`` that will handle it.  
<br>
##ADVANCED FOLDER


### RESCUE12.rb  
User enters URL but errors not handled   

### RESCUE13.rb  
User enters URL - errors handled  

### RESCUE14.rb  
Handles error and reports on it  

### RESCUE15.rb  
Adds ENSURE  

### RESCUE16.rb  
Adds RETRY  

### RESCUE17.rb  
Adds timeout  
Test with http://www.cnn.com:81  
ie specify non-responding port 81  

### RESCUE18.rb
Differentiate between timeout and other errors  

### RESCUE19.rb
Additional errors, stacked  


