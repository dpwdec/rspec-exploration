require 'loader.rb'

describe 'load_file' do
  it 'returns type file' do
    expect(load_file("lib/names.csv")).to be_a_kind_of(File)
  end
end