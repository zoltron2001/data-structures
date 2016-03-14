require_relative 'hash'

describe Hash do
  let(:new_hash) {MyHash.new}

  it 'should initialize a hash array' do
    expect(new_hash).to be_an_instance_of MyHash
  end

  it 'should set a key value pair in the hash' do
    new_hash.set("poop","brown")
    expect(new_hash.get("poop")).to eq("brown")
  end

  it "should return false for a pair that doesn't exist" do
    new_hash.set("poop","brown")
    expect(new_hash.has_key?("jump")).to eq(false)
  end

  it "should return true for a pair that exists" do
    new_hash.set("poop","brown")
    expect(new_hash.has_key?("poop")).to eq(true)
  end

  it "should make key into something new" do
    new_hash.set("poop","brown")
    new_hash.remove("poop")
    expect(new_hash.get("poop")).not_to eq("brown")
  end

  it "should remove when there are nodes on same index" do
    new_hash.set("poop","brown")
    new_hash.set("pee","yellow")
    new_hash.set("jump","up")
    new_hash.remove("poop")
    expect(new_hash.get("poop")).not_to eq("brown")
  end
end