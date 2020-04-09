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
  
  xit "fails to double a fake method" do
    inst = instance_double(Inst)
    allow(inst).to receive(:desperate) { "Still surviving" }
  end
  
  it "receives a method" do
    inst = instance_double("Inst", :panic => "Walang chill")
    expect(inst).to receive(:panic)
    inst.panic
  end
  
  it "checks inputs" do
    inst = instance_double(Inst, :fold => "folded at 5")
    inst.fold(5)
  end
  
  xit "fails wrong input" do
    inst = instance_double(Inst, :fold => "folded at 5")
    inst.fold
  end
  
  it "checks rquire keywords" do
    inst = instance_double(Inst, :check => "checked")
    inst.check(foo: 7)
  end
  
  xit "fails requirement" do
    inst = instance_double(Inst, :check => "checked")
    inst.check(7)
  end
  
  it "expects" do
    inst = instance_double(Inst)
    expect(inst).to receive(:panic)
    inst.panic
  end
  
  it "does not expect" do
    inst = instance_double(Inst)
    expect(inst).to receive(:desperate)
    inst.desperate
  end
end