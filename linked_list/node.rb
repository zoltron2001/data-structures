class Node
  attr_reader :value, :pointer
  # Instantiate a new node containing element
  def initialize(element)
    @pointer = nil
    @value = element
  end

  # Insert other_node after this node. In other words, other_node becomes the node that this instance points to.
  def insert_after(other_node)
    other_node.pointer = self.pointer
    @pointer = other_node
  end

  # Remove the node that this node points to (aka the node "after" this node)
  def remove_after
    deleted_item = self.pointer
    @pointer = self.pointer.pointer
    deleted_item
  end
end