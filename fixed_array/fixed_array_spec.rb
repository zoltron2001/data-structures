require_relative 'fixed_array'

describe FixedArray do

  let(:fixedArray) { FixedArray.new }

  it 'should return an array with the specified length' do
    expect(fixedArray.new(5).length).to eq(5)
  end

  it 'should return the value at a given index' do
    expect(fixedArray.new(5))
    expect(fixedArray.get(0)).to eq(nil)
  end

  it 'should set a given array element to a given value' do
    expect(fixedArray.new(5))
    fixedArray.set(0,3)
    expect(fixedArray.get(0)).to eq(3)
  end

  it 'getter should throw an exception for improper index' do
    expect(fixedArray.new(5))
    expect(fixedArray.get(10)).to eq("Index is out of bounds.")
  end

  it 'setter should throw an exception for improper index' do
    expect(fixedArray.new(5))
    expect(fixedArray.set(-1, 1)).to eq("Index is out of bounds.")
  end

end
