# Linked List: For understanding ... http://www.geeksforgeeks.org/data-structures/linked-list/
#
# Linked List Traversal:
# In the previous file, we have created a simple linked list with three nodes.
# Let us traverse the created list and print the data of each node. For traversal,
# let us write a general purpose function print_list() that prints any given list.
# We will continue with our same code as before but adding print_list to our SLL.

class Node
  attr_accessor :data, :next_node

  def initialize data, next_node = nil
    @data = data
    @next = next_node
  end

  def to_s
    @value || nil
  end
end

class SinglyLinkedList # requires insert, find, remove
  attr_accessor :head

  def initialize(head=nil)
    @head = head
  end

  def insert data
    @head = Node.new(data)
  end

  def find value # returns the node value or nil if none found
    node = @head
    while node.next_node && node.to_s != value
      node = node.next_node
    end
    node if node.to_s == value
  end

  def remove target
    node = @head
    @head = node.next_node
  end

  def print_list
    temp = @head
    while temp
      puts temp.data
      temp = temp.next_node
    end
  end
end

# Start with the empty list
link_list = SinglyLinkedList.new

link_list.head = Node.new(1)
second_node    = Node.new(2)
third_node     = Node.new(3)


link_list.head.next_node = second_node # Link first node with second
second_node.next_node = third_node # Link second node with third

link_list.print_list
