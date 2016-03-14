require './array_list'
require './fixed_array'

class Map

  def initialize
    @map = ArrayList.new
  end
  # Add a key-value pair to the map. If the key is already present, replace the value. Return the value.
  def set(key,value)
    # need to check if keys are unique
    key_value_pair = FixedArray.new(2)
    key_value_pair.set(0,key)
    key_value_pair.set(1,value)
    @map.add(key_value_pair)
  end

  def get(key)
    counter = @map.length - 1
    until counter == 0
      pair = @map.get(counter)
      return pair.get(1) if pair.get(0) == key
      counter -= 1
    end
  end

  def has_key(key)
    get(key) ? true : false
  end

  def remove(key)
    counter = @map.length - 1
    until counter == 0
      pair = @map.get(counter)
      return pair.set(0,nil) if pair.get(0) == key
      counter -= 1
    end
  end

  # { |value, key| block }: Iterate through the Map, passing the block each value and key.
  def iterate(&block)

  end

end