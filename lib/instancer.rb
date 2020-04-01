class Instancer
  
  def initialize
    @history = []
    @o_array = [5]
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
  
end