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
  
  it "has an instance_store" do
    expect(subject.instance_store).to be_kind_of(Store)
  end
  
  it "generates a random number greater than store" do
    expect(subject.instance_store.random_store).to be > 20
  end
end

describe Ranger do
  context "range between 10 and 20" do
    before do
      @ranger = Ranger.new
      @ranger.range=[10,20]
    end
    it "should return a random number between 10 and 20" do
      expect(@ranger.random_in_range).to be_between(10, 20).inclusive
    end
  end
  
  context "range between 50 and 100" do
    before do
      @ranger = Ranger.new
      @ranger.range=[50,100]
    end
    it "should return a number between 50 and 100" do
      expect(@ranger.random_in_range).to be_between(50, 100).inclusive
    end
  end
end

describe QRanger do
  
  context "default range" do
    it "should return a number between 0 and 5" do
      expect(subject.random_in_range).to be_between(0, 5).inclusive
    end
  end
  
  context "range between 60 and 90" do
    let(:qranger) { QRanger.new(60, 90) }
    it "should return a number between 60 and 90" do
      expect(qranger.random_in_range).to be_between(60, 90).inclusive
    end
  end
  
  context "range between 1 and 10" do
    let(:qranger) { QRanger.new(1, 10) }
    it "should return a number between 1 and 10" do
      expect(qranger.random_in_range).to be_between(1, 10).inclusive
    end
  end
end