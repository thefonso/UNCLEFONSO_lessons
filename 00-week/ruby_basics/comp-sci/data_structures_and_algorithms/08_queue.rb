# Data Structures
# ====================
# ====================

# Queue
# =====

# THEORETICAL - what is happening here?
# =======================================

# TODO ?????

# Can be implemented as an array in ruby
# Make use of Array#push and Array#shift

def queue_as_array
  puts "Queue as array: "
  arr = [1,3,4,5,6,7]
  print arr
  puts

  puts "Dequeue element (1) from head:"
  puts arr.shift
  print arr
  puts

  puts "Enqueue element (8) at tail:"
  arr.push(8)
  print arr
  puts

  puts "Head:"
  puts arr[0]
  puts "Tail:"
  puts arr[-1]
  puts
end

# Example
# -------
queue_as_array

# Simple Queue Class
# ==================

class Queue
  attr_accessor :arr

  def initialize arr = []
    @arr = arr
  end

  def enqueue num
    @arr << num
  end

  def dequeue
    @arr.shift
  end

  def empty?
    @arr.empty?
  end

  def head
    @arr[0]
  end

  def tail
    @arr[-1]
  end

  def to_s
    @arr.to_s
  end

  def clear!
    @arr = []
  end
end

def queue_as_class
  puts "Queue as class: "
  queue = Queue.new([1,3,4,5,6,7])
  print queue.to_s
  puts

  puts "Dequeue element (1) from head:"
  puts queue.dequeue
  print queue.to_s
  puts

  puts "Enqueue element (8) at tail:"
  queue.enqueue(8)
  print queue.to_s
  puts

  puts "Head:"
  puts queue.head
  puts "Tail:"
  puts queue.tail
  puts
end

# Example
# -------
queue_as_class

# INTERVIEW WAY - with Nodes
# ===========================================

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