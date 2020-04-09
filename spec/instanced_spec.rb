require 'instanced.rb'

describe Inst, "#panic" do
  it "doubles a real method" do
    inst = instance_double(Inst, :panic => "No chill")
    puts inst.panic
  end
  
  xit "fails to double a fake method" do
    inst = instance_double("Inst", :desperate => "Surviving")
    puts inst.desperate
  end
  
  it "doubles a real method" do
    inst = instance_double("Inst")
    allow(inst).to receive(:panic) { "Zero Chill" }
    puts inst.panic
  end
  
  it "fails to double a fake method" do
    inst = instance_double(Inst)
    allow(inst).to receive(:desperate) { "Still surviving" }
  end
end