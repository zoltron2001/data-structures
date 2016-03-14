class Node
  attr_reader :value, :pointer
  def initialize(element)
    @pointer = nil
    @value = element
  end

  def insert_after(other_node)
    other_node.pointer = self.pointer
    @pointer = other_node
  end

  def remove_after
    deleted_item = self.pointer
    @pointer = self.pointer.pointer
    deleted_item
  end
end