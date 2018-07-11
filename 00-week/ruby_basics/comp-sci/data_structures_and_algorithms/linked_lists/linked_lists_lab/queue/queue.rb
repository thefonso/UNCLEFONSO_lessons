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

class Queue
  attr_accessor :head

  def initialize(first_value=nil)
    # initializes the linked list
    @head = Node.new(first_value) if first_value
  end

  def enqueue
    # enqueue's a node to the end
    node = Node.new(value)
    self.last.next_node = node
  end

  def dequeue
    # dequeue's a node from the beginning
    node = @head
    @head = node.next_node
    node
  end

  def last
    # get's the last node
    node = @head
    while node.next_node
      node = node.next_node
    end
    node
  end

end