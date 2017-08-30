# Data Structures
# ====================
# ====================

# Queue
# =====

# Can be implemented as an array in ruby
# Make use of Array#push and Array#shift

def queue_as_array
  puts "Queue as array: "
  arr = [1,3,4,5,6,7]
  print arr
  puts

  puts "Remove element (1) from head:"
  puts arr.shift
  print arr
  puts

  puts "Add element (8) at tail:"
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
