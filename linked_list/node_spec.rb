require_relative 'node'

describe Node do

  let(:first_node) {Node.new(1)}
  let(:middle_node) {Node.new(2)}
  let(:last_node) {Node.new(3)}

  it 'should create a new node' do
    expect(first_node.value).to eq(1)
  end

  it 'should point one node to another' do
    expect(first_node.insert_after(last_node)).to eq(last_node)
  end

  it 'should reset the pointer to nil' do
    expect(first_node.remove_after).to eq(nil)
  end

end
