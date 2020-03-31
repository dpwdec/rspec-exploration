require 'csv'

class Namer
  
  @@names = []
  
  def load_names
    CSV.foreach("names.csv") do |row|
      i_name, i_age = row
      @@names << {name: i_name, age: i_age}
    end
  end
  
  def name_to_age(i_name)
    o_age = 0
    @@names.each do |person|
      if i_name == person[:name]
        o_age = person[:age]
      end
    end
    o_age
  end
  
  def names
    @@names
  end
  
end

n = Namer.new
n.load_names
print n.names
puts n.name_to_age("frank")
