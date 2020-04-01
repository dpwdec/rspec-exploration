class Instancer
  
  def initialize
    @history = []
    @o_array = [5]
    @instance_store = Store.new
  end
  
  def add_var(n_var)
    @history << n_var
  end
  
  def history
    @history
  end
  
  def o_array
    @o_array
  end
  
  def covert_to_hash
    @o_array = {number: 5}
  end
  
  def instance_store
    @instance_store
  end
  
end

class Store
  
  def initialize
    @my_store = 20
  end
  
  def random_store
    rand(@my_store..100)
  end
  
end

class Ranger
  
  def initialize
    @range = [0,1]
  end
  
  def range=(n_range)
    @range = n_range
  end
  
  def random_in_range
    rand(@range[0]..@range[1])
  end
end

class QRanger
  def initialize(min=0,max=5)
    @range = [min, max]
  end
  
  def random_in_range
    rand(@range[0]..@range[1])
  end
end