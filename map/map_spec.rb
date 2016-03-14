require_relative 'map'
require_relative 'fixed_array'
require_relative 'array_list'

describe Map do
  let(:new_map) {Map.new}

  it 'should create an instance of Map' do
    expect(new_map).to be_an_instance_of Map
  end

  it 'should set a key value pair in map' do
    expect(new_map.set(1,2)).to be_an_instance_of FixedArray
  end

  it 'should return matching key if it exists' do
    new_map.set("pee","yellow")
    new_map.set("poop","brown")
    expect(new_map.get("poop")).to eq("brown")
  end

  it "should return false for key that doesn't exist" do
    new_map.set("poop","brown")
    expect(new_map.has_key(1)).to eq(false)
  end

  it "should replace key with nil" do
    new_map.set("poop","brown")
    new_map.remove("poop")
    expect(new_map.get(nil)).to eq(nil)
  end


end
