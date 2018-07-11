# Stack
# =====

# THEORETICAL - what is happening here?
# =======================================

# TODO ?????
#
# RUBY WAY NORMAL
# ========================================

# Can also be implemented as an array in ruby
# Make use of Array#push and Array#pop

def stack_as_array
  puts "Stack as array: "
  arr = [1,3,4,5,6,7]
  print arr
  puts

  puts "Pop top element (7):"
  puts arr.pop
  print arr
  puts

  puts "Push element (8):"
  arr.push(8)
  print arr
  puts
  puts
end

# Example
# -------
stack_as_array

# INTERVIEW WAY
# =========================================

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
    @head = Node.new(first_value) if first_value
  end

  def push
    # pushes a node into the stack
    node = Node.new(value)
    node.next_node = @head.new_node
    @head = node
  end

  def pop
    # pops the node from the stack
    node = @head
    @head = node.next_node
    node
  end

end