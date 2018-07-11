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
  end

  def enqueue
    # enqueue's a node to the end
  end

  def dequeue
    # dequeue's a node from the beginning
  end

end