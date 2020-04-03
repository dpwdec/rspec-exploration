
describe "testing for methods with receive" do
  
  let(:user_input) { "10" }
  
  it "tests method" do
    allow_any_instance_of(Object).to receive(:my_method).and_return(*user_input)
    expect { load "lib/caller.rb" }.to output("10").to_stdout
  end
end