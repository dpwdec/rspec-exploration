require 'ref.rb'

describe Caller do
  it "calls create on notifier" do
    note = instance_double("Notifier")

    expect(note).to receive(:create).with("re-call", 12) { "re-called 12" }
    
    caller = Caller.new(note)
    caller.notify!
  end
  it "fails by calling profile on notifier" do
    note = instance_double("Notifier")

    expect(note).to receive(:profile).with("input", 20) { "input 20" }
    
    caller = Caller.new(note)
    caller.reiterate!
  end
end