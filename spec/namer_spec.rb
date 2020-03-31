require 'namer.rb'

describe Namer do
  before(:all) { Namer.load_names }
  it 'gets age 40 from name Frank' do
    expect(subject.name_to_age("Franke")).to eq("40")
  end
end