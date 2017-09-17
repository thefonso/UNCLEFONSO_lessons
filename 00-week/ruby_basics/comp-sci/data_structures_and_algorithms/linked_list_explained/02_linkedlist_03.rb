# LINKED LIST - INSERTING A NODE (set2)
# We have introduced Linked Lists in the previous set.
# We also created a simple linked list with 3 nodes and discussed linked list traversal.
# http://www.geeksforgeeks.org/linked-list-set-2-inserting-a-node/

# A node can be added in three ways
# 1) At the FRONT of the linked list
# 2) AFTER a given node.
# 3) At the END of the linked list.


class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node=nil)
    @data = data
    @next = next_node
  end

end

# Linked List class contains a Node object
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

  # FRONT: add node to the front: (4 step process)
  # Big-O: Time complexity of push() is O(1) as it does constant amount of work.
  def push new_data
    # 1 & 2: Allocate the Node & Put in the data
    new_node = Node.new(new_data)
    # 3. Make next of new Node as head
    new_node.next_node = @head
    # 4. Move the head to point to new Node
    @head = new_node
  end

  # AFTER: Add a node after a given node: (5 step process)
  # Big-O: Time complexity of insertAfter() is O(1) as it does constant amount of work.
  def insert_after prev_node, new_data
    # 1. check if the given prev_node exists
    if prev_node == nil
      puts "The given previous node must be in LinkedList"
    end
    # 2. Create new node
    # 3. Put in the data
    new_node = Node.new(new_data)
    # 4. Make next of new Node as next of prev_node
    new_node.next_node = prev_node.next_node
    # 5. make next of prev_node as new_node
    prev_node.next_node = new_node
  end

  # END: Add a node at the end: (6 steps process)
  # Big-O: Time complexity of append is O(n) where n is the number of nodes in linked list.
  # Since there is a loop from head to end, the function does O(n) work.
  # This method can also be optimized to work in O(1) by keeping an extra pointer to tail of linked list
  def append new_data
    # 1. Create a new node
    # 2. Put in the data
    # 3. Set next as None
    new_node = Node.new(new_data)
    # 4. If the Linked List is empty, then make the new node as head
    if @head == nil
      @head = new_node
    else
      # 5. Else traverse till the last node
      last = @head
      while last.next_node
        last = last.next_node
      end
      # 6. Change the next_node of last node
      last.next_node = new_node
    end

  end

  # Utility function to print the linked list
  def print_list
    temp = @head
    while temp
      puts temp.data
      temp = temp.next_node
    end
  end
end

# Start with the empty list
link_list = SinglyLinkedList.new

# Insert 6.  So linked list becomes 6->None
link_list.append(6)

# Insert 7 at the beginning. So linked list becomes 7->6->None
link_list.push(7)

# Insert 1 at the beginning. So linked list becomes 1->7->6->None
link_list.push(1)

# Insert 4 at the end. So linked list becomes 1->7->6->4->None
link_list.append(4)

# Insert 8, after 7. So linked list becomes 1-> 7-> 8-> 6-> 4-> None
link_list.insert_after(link_list.head.next_node, 8)

p "Created Linked List is: "
link_list.print_list
