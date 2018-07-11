# Linked List [1]

# Morning

### Learning Objectives:

* Explain what a Linked List is and the operations associated with it
* Determine the time complexity to insert, access, and remove from a linked list
* Implement a singly Linked List class
* Implement a doubly Linked List class

### Agenda:
* Code-along: re-implementing an array in ruby. [Example](http://stackoverflow.com/questions/1571349/can-the-array-be-reinvented-in-ruby/1572035#1572035)
* What is a linked list? (Whiteboard this)
	* traversing 
	* next
	* remove
	* insert
* What is a doubly linked list?
* LAB: Implementing a singly-linked list in Ruby [Directions](https://gist.github.com/sferik/ee96ef15e46548bbb1ea)

# Afternoon

### Learning Objectives

* Explain what stacks and queues are and the operations associated with them


### Agenda

* What are stacks and queues?
* LAB: [Reverse Polish Notaion](linked_lists_lab/reverse_polish/readme.md) Calculator

# Homework

* LAB: [Reverse Polish Notaion](linked_lists_lab/reverse_polish/readme.md) Calculator

# Notes
Queues, Stacks, Linked Lists (Basic Data Structures)

[https://github.com/doshea/singly_linked_list](https://github.com/doshea/singly_linked_list)

This module should take up an afternoon and should introduce students to some basic data structures and their uses. The instructor should begin by introducing the concepts of stacks and queues, model some on the board, and then talk about real-life examples and programming examples of both. It is very important that the call stack be discussed and drawn here -- students will be talking about the call stack a lot in recursion later in the week.

Next, the instructor will introduce the concept of a SinglyLinkedList, a very basic data structure that is lightweight (pro) but not capable of handling all data implementations (con). Diagram an SLL on the board, then do a code-along to build the absolute basics of a SLL in Ruby: the Node class entirely and the SinglyLinkedList class up to the initialize. Transition into asking the students to help pseudo-code the .add method for the SLL, then write the code for the pseudo code.

Break into lab mode: In groups of two, students should write the .last, .length, .append, .find and .reverse methods for the SinglyLinkedList class.

For homework after this lab, students should write a DoublyLinkedList class (make sure they test it for lists of length 0, 1, 2, 1000+) and should come to class prepared to discuss which LinkedList type they would use to represent a stack and which one for a queue (Answer: stack can be singly, queue should be doubly)
