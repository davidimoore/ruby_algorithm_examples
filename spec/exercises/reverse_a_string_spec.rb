require_relative '../../exercises/reverse_a_string'
describe ReverseAString do
  it 'reverses a string' do
    expect(ReverseAString.run("eulb si esuoh eht")).to eq("the house is blue")
  end
end