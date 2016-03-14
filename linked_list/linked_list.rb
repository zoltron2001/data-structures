require_relative 'node'

class LinkedList

  # Instantiate a new linked list
  def new
    @head = nil
    @tail = nil
    @counter = 0
  end

  # Insert an element at the front of the list
  def insert_first(node)
    @head = node
    @counter += 1
    #refactor for lists with stuff in it
  end

  # Remove the element at the front of the list or nil if absent
  def remove_first
    @head = self.pointer
    @counter -= 1
  end

  # Insert an element at the back of the list
  def insert_last(node)
    @tail.pointer = node
    @tail = node
    @counter += 1
  end

  # Remove the element at the back of the list or nil if absent
  def remove_last
    @counter -= 1
  end

  # Get the element in the list at index
  def get(index)
  end

  # Set the element in the list at index
  def set(index, element)
  end

  # Insert the value element in the List at position index
  def insert(index, element)
    @counter += 1
  end

  # Return the size of the list
  def size
    @counter
  end

end