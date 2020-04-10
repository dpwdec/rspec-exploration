class Pect
  
  def initialize(n)
    @n = n
    @count = 10
  end
  
  def spit
    if @n.nil?
      return "Its nil"
    else
      return @n
    end
  end
  
  def add_n(n)
    @n = n
  end
  
  def add_count
    @count+=1
  end
  
  def count
    @count
  end
  
end

class Mect
  def initialize
    @g = "goodbye"
  end
  
  def pit
    return @g
  end
end