### Instructional Component

The instructor should begin by introducing the concepts of stacks and queues, model some on the board, and then talk about real-life examples and programming examples of both. It is very important that the call stack be discussed and drawn here -- students will be talking about the call stack a lot in recursion later in the week.

Next, the instructor will introduce the concept of a SinglyLinkedList, a very basic data structure that is lightweight (pro) but not capable of handling all data implementations (con). Diagram an SLL on the board, then do a code-along to build the absolute basics of a SLL in Ruby: the Node class entirely and the SinglyLinkedList class up to the initialize. Transition into asking the students to help pseudo-code the .add method for the SLL, then write the code for the pseudo code.

Break into lab mode: In groups of two, students should write the `.last`, `.length`, `.append`, `.find` and `.reverse` methods for the `SinglyLinkedList` class.

### The Why

### Potential Student Misunderstandings

### Ways to assess students understanding of the material

For homework after this lab, students should write a DoublyLinkedList class (make sure they test it for lists of length 0, 1, 2, 1000+) and should come to class prepared to discuss which LinkedList type they would use to represent a stack and which one for a queue (Answer: stack can be singly, queue should be doubly)

### Single takeaway