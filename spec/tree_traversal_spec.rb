class Node
  attr_reader :left, :right, :value
  
  def initialize(left:, right:, value:)
    @left = left
    @right = right
    @value = value
  end
  
  def is_unival(root:, value:)
    return true unless root
    puts "DEFINE ME"
    root.value == value &&
      is_unival(root: root.left, value: value) &&
      is_unival(root: root.right, value: value)
  end
end


describe "determine if values are are all the same" do
  it "uses recursion to evaluate node values" do
    value = 1
    
    node_left =
      Node.new(
        left: Node.new(left: nil, right: nil, value: value),
        right: Node.new(left: nil, right: nil, value: value),
        value: value)
    node_right = Node.new(left: nil, right: nil, value: value)
    root = Node.new(left: node_left, right: node_right, value: value)
    
    expect(root.is_unival(root: root, value: value))
  
  end
end