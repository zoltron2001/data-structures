require './node'

class MyHash

  def initialize
    @hash = []
    @length_limit = 1
  end

  def set(key,value)
    pair = [key,value]
    index = hashish(key)
    if @hash[index]
      @hash[index].insert_after(Node.new(pair))
    else
      @hash[index] = Node.new(pair)
    end
  end

  def get(key)
    index = hashish(key)
    return nil if @hash[index] == nil
    return @hash[index].value[1] if @hash[index].value[0] == key
    return nil if @hash[index].pointer == nil
    get_node_recursively(@hash[index].pointer,key)
  end

  def has_key?(key)
    get(key) ? true : false
  end

  def remove(key)
    index = hashish(key)
    if @hash[index].value[0] == key
      @hash[index] = @hash[index].pointer
    else
      remove_node_recursively(@hash[index].pointer, key)
    end
  end
  # { |value, key| block }
  # Iterate through the Hash
  # passing the block each value and key
  def iterate(&block)
  end

  private

  def hashish(string)
    string.hash % @length_limit
  end

  def get_node_recursively(node,key)
    return node.value[1] if node.value[0] == key
    return nil if node.pointer == nil
    get_node_recursively(node.pointer,key)
  end

  def remove_node_recursively(node,key)
    if node.value[0] == key
      node = node.pointer
    else
      remove_node_recursively(node.pointer, key)
    end
  end
end