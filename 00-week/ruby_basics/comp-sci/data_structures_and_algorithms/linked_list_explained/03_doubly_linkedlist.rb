# Doubly Linked List | Set 1 (Introduction and Insertion)
# A Doubly Linked List (DLL) contains an extra pointer,
# typically called previous pointer, together with next pointer
# and data which are there in singly linked list.

# Advantages over singly linked list
# 1) A DLL can be traversed in both forward and backward direction.
# 2) The delete operation in DLL is more efficient if pointer to the node to be deleted is given

# Disadvantages over singly linked list
# 1) Every node of DLL Require extra space for an previous pointer. It is possible to implement DLL with single pointer though (See this and this).
# 2) All operations require an extra pointer previous to be maintained.

# Insertion
# A node can be added in four ways
# 1) At the front of the DLL
# 2) After a given node.
# 3) At the end of the DLL
# 4) Before a given node.
require 'pry'

class Node
  attr_accessor :data, :next_node, :prev_node

  def initialize(data, next_node=nil, prev_node=nil)
    @data = data
    @next = next_node
    @prev = prev_node
  end
end

class DoublyLinkedList
  attr_accessor :head

  def initialize(head=nil)
    @head = head
  end

  # Given a reference to the head of a list and an
  # integer,inserts a new node on the front of list
  def push new_data
    # 1 & 2: Allocate the Node & Put in the data
    new_node = Node.new(new_data)
    # 3. Make next of new Node as head
    new_node.next_node = @head
    # 4. change prev of head node to new_node
    if @head != nil
      @head.prev_node = new_node
    end
    # 5. move the head to point to the new node
    @head = new_node
  end

  # Given a node as prev_node, insert a new node after the given node
  def insert_after prev_node, new_data
    # 1. check if the given prev_node exists
    if prev_node == nil
      puts "the given previous node cannot be NULL"
    end
    # 2. Create new node
    # 3. Put in the data
    new_node = Node.new(new_data)
    # 4. Make next of new Node as next of prev_node
    new_node.next_node = prev_node.next_node
    # 5. make next of prev_node as new_node
    prev_node.next_node = new_node
    # 6. Make prev_node ass previous of new_node
    new_node.prev_node = prev_node
    # 7. Change previous of new_nodes's next node
    if new_node.next_node != nil
      new_node.next_node.prev_node = new_node
    end
  end

  def append new_data
    # 1. Create a new node
    # 2. Put in the data
    new_node = Node.new(new_data)
    # 3. This new node is going to be the last node, so make next of it as None
    new_node.next_node = nil
    # 4. If the Linked List is empty, then make the new node as head
    if @head == nil
      new_node.prev_node = nil
      @head = new_node
    else
      # 5. Else traverse till the last node
      last = @head
      while last.next_node
        last = last.next_node
      end
      # 6. Change the next_node of last node
      last.next_node = new_node
      # 7. Make last node as previous of new node
      new_node.prev_node = last
    end
  end

  # Utility function to print the linked list
  def print_list(node)
    puts "\nTraversal in forward direction"
    while node != nil
      puts node.data
      last = node
      node = node.next_node
    end

    puts "\nTraversal in reverse direction"
    while last != nil
      puts last.data
      last = last.prev_node
    end
  end
end

# Driver program to test above functions

# Start with empty list
llist = DoublyLinkedList.new

# Insert 6. So the list becomes 6->None
llist.append(6)

# Insert 7 at the beginning.
# So linked list becomes 7->6->None
llist.push(7)

# Insert 1 at the beginning.
# So linked list becomes 1->7->6->None
llist.push(1)

# Insert 4 at the end.
# So linked list becomes 1->7->6->4->None
llist.append(4)

# Insert 8, after 7.
# So linked list becomes 1->7->8->6->4->None
llist.insert_after(llist.head.next_node, 8)

puts "Created DLL is: "
llist.print_list(llist.head)