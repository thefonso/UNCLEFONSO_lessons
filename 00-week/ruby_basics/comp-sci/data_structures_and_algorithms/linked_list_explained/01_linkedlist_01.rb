# Linked List: For understanding ... http://www.geeksforgeeks.org/data-structures/linked-list/
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
end

# Start with the empty list
link_list = SinglyLinkedList.new
link_list.head = Node.new(1)
second_node      = Node.new(2)
third_node       = Node.new(3)

#
#     Three nodes have been created.
#     We have references to these three blocks as first,
#     second and third
#
#     llist.head        second              third
#          |                |                  |
#          |                |                  |
#     +----+------+     +----+------+     +----+------+
#     | 1  | None |     | 2  | None |     |  3 | None |
#     +----+------+     +----+------+     +----+------+
#

link_list.head.next_node = second_node # Link first node with second

#
#     Now next of first Node refers to second.  So they
#     both are linked.
#
#     llist.head        second              third
#          |                |                  |
#          |                |                  |
#     +----+------+     +----+------+     +----+------+
#     | 1  |  o-------->| 2  | null |     |  3 | null |
#     +----+------+     +----+------+     +----+------+
#

second_node.next_node = third_node # Link second node with third

#
#     Now next of second Node refers to third.  So all three
#     nodes are linked.
#
#     llist.head        second              third
#          |                |                  |
#          |                |                  |
#     +----+------+     +----+------+     +----+------+
#     | 1  |  o-------->| 2  |  o-------->|  3 | null |
#     +----+------+     +----+------+     +----+------+
#


# NEXT: Let's do something with this data-structure. Next up linked list traversal
