require 'starter.rb'

describe 'starts with' do
  it "starts with a 3" do
    expect(put_to_front(976423)).to start_with(3)
  end
end