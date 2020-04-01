require 'instancer'

describe Instancer do
  context "var to 12" do
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
    
    it "converts array to Hash" do
      expect{ @u_instance.covert_to_hash }.to change(@u_instance, :o_array).to be_a_kind_of(Hash)
    end
  end
  
  context "var to 22" do
    before do
      @u_instance = Instancer.new
      @instace_var = 22
      @u_instance.add_var(22)
    end
    
    it "it has record of var" do
      expect(@u_instance.history).to include(@instace_var)
    end
    
    it "includes added object" do
      expect{ @u_instance.add_var(12) }.to change(@u_instance, :history).to include(12)
    end
    
    it "converts array to Hash" do
      expect{ @u_instance.covert_to_hash }.to change(@u_instance, :o_array).to be_a_kind_of(Hash)
    end
  end
  
end