class Eacher
  @@amount = 0
  
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