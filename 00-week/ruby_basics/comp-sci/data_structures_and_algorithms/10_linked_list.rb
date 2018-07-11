# LINKED LIST

# Linked List, ruby's missing data structure
# https://www.sitepoint.com/rubys-missing-data-structure/

# THEORETICAL - what is happening here?
# =======================================

# TODO ?????
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

  def insert_after(node, new_node)
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
  # def last_r

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


# class SinglyLinkedList
#   attr_accessor :head

#   def initialize(first_value=nil)
#     @head = Node.new(first_value) if first_value
#   end

#   def add(value)
#     # adds a new node to the list, makes it the new head, and links it
#     # to the former head
#     new_node = Node.new(value)
#     last.next_node = new_node
#   end

#   def remove
#     # finds out what the head's next node is, deletes the head, and
#     # makes the next node the new head

#     # Slightly safer code
#     old_head = @head
#     new_head = @head.next_node
#     old_head.next_node = nil
#     old_head.value = nil
#     @head = new_head

#     # Necessary code
#     # @head = @head.next_node
#   end

#   # Looping last
#   def last
#     node = @head
#     while node.next_node
#       node = node.next_node
#     end
#     node
#   end

#   # Recursive last method -- Optional
#   # def last(node)
#   #   if node.next_node
#   #     last(node.next_node)
#   #   else
#   #     node
#   #   end
#   # end

#   def length
#     counter = 0
#     if @head
#       node = @head
#       counter += 1
#       while node.next_node
#         node = node.next_node
#         counter += 1
#       end
#     end
#     counter
#   end

#   def length
#     counter = 0
#     current_node = @head
#     while current_node
#       current_node = current_node.next_node
#       counter += 1
#     end
#     counter
#   end

#   def append(value)
#     # adds node with this value at the tail
#     current_last = self.last
#     current_last.next_node = Node.new(value)
#   end

#   def find(input)
#     # returns the node with that value or nil if none found
#     node = @head
#     while node.value != input
#       node = node.next_node
#     end
#     node
#   end

#   def find(value)
#     current_node = @head
#     if current_node
#       while current_node.to_s != value
#         if current_node.next_node
#           current_node = current_node.next_node
#         else
#           return nil
#         end
#       end
#       current_node
#     end
#   end

#   def reverse
#     # returns a new SinglyLinkedList with all elements reversed
#   end

#   def reverse!
#   end

# end
