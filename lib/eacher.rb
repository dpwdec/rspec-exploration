class Eacher
  @@amount = 0
  
  def initialize
    puts "creating"
    @mult = 5
  end
  
  def setup
    puts "set up"
    @mult=10
  end
  
  def mult_to(n)
    return n*@mult
  end
  
  def self.amount=(number)
    @@amount=number
  end
  
  def self.amount
    @@amount
  end
  
  def add_to(num)
    new_num = num + @@amount
    @@amount = 20
    return new_num
  end
  
end