
describe "Test for loading file output directly RATHER than to STDOUT" do
  it "loads a file that returns 20" do
    expect { load exsource.rb }.to eq(20)
  end
end