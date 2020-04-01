class Instancer
  
  def initialize
    @history = []
  end
  
  def add_var(n_var)
    @history << n_var
  end
  
  def history
    @history
  end
  
end