class FixedArray

  # Instantiate a new FixedArray with space for size elements
  def new(size)
    @array = Array.new(size)
  end

  # Get a value from the array at the specified index
  # UNLESS out of index range
  def get(index)
    # raise IndexOutOfBoundsError if index >= self.length || index < 0
    return "Index is out of bounds." if out_of_bounds(index)
    @array[index]
  end

  # Set a value in the array at a specific index and return the element
  # UNLESS out of index range
  def set(index, element)
    # raise IndexOutOfBoundsError if index >= self.length || index < 0
    return "Index is out of bounds." if out_of_bounds(index)
    @array[index] = element
  end

  def out_of_bounds(index)
    index > @array.length || index < 0
  end

end

# class IndexOutOfBoundsError < StandardError; end