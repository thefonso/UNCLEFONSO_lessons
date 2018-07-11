class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def to_s
    @value || nil
  end
end

class SinglyLinkedList
  attr_accessor :head

  def initialize(first_value=nil)
    # initializes the linked list
    @head = Node.new(first_value) if first_value
  end

  def insertAfter(node, new_node)
    # adds the new_node after node
    new_node.next_node = node.next_node
    node.next_node = new_node 
  end

  def prepend(value)
    #prepend to the beginning
    node = Node.new(value)
    node.next_node = @head.new_node
    @head = node
  end

  def append(value)
    # append to the end
    node = Node.new(value)
    self.last.next_node = node
  end

  def remove
    # removes the first node
    node = @head
    @head = node.next_node
  end

  def last
    # get's the last node
    node = @head
    while node.next_node
      node = node.next_node
    end
    node
  end

  # Recursive last method -- Optional
  # def last(node)
  #   if node.next_node
  #     last(node.next_node)
  #   else
  #     node
  #   end
  # end

  def length
    # calculates the length of the list
    counter = @head ? 1 : 0
    node = @head
    while node.next_node
      node = node.next_node
    end
    counter
  end

  def find(input)
    # returns the node with that value or nil if none found
    node = @head
    while node.next_node && node.to_s != input
      node = node.next_node
    end
    node if node.to_s == input
  end

  def reverse
    # returns a new SinglyLinkedList with all elements reversed
  end

  def reverse!
    
  end

end

