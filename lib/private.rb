class Privates
  def initialize
    @private_object
  end
  
  def report_private
    return @private_object.return_it
  end
end

class MyMock
  def return_it
    10
  end
end