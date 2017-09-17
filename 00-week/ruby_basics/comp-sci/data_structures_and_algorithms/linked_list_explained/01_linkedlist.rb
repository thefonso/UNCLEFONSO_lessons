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

# We'll explore what this code does in the next file
# we'll leave this version here so we can use it as in included require file later on
