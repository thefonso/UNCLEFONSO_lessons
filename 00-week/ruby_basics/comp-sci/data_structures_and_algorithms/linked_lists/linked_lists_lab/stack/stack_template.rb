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

class Stack
  attr_accessor :head

  def initialize(first_value=nil)
    # initializes the linked list
  end

  def push
    # pushes a node into the stack
  end

  def pop
    # pops the node from the stack
  end

end