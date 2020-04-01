class Classer
  
  @@number = 1
  
  def initialize
    print self.object_id
    @@number+=1
  end
  
  def add_to(n)
    n+@@number
  end
end