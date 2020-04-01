require 'instancer'

describe Instancer do
  before do
    @u_instance = Instancer.new
    @instace_var = 12
    @u_instance.add_var(12)
  end
  
  it "it has record of var" do
    expect(@u_instance.history).to include(@instace_var)
  end
  
  it "includes added object" do
    expect{ @u_instance.add_var(10) }.to change(@u_instance, :history).to include(10)
  end
  
end