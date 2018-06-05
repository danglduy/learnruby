class Car
  attr_accessor :counter, :fuel # Create get and set methods for attributes

  def drive(l)
    counter = l
    fuel_change(2)
  end

  # define private method
  private
    def fuel_change(v)
      fuel = v
    end

end

class Vios < Car
  attr_accessor :wheel
  
  def initialize()
    @wheel   = 4 # Instance variable
    @utility = ""
    @@seat   = 5 # Class variable
  end
  
  def setUtility(v)
    @utility = v
  end
  
  def getUtility
    @utility
  end

  def self.seat
    @@seat
  end

  def self.seat=(s)
    @@seat = s
  end

end

class Vios3_0 < Vios
  def drive(l)
    super # Call parent drive() method
    puts "GPS"
  end
end

v2 = Vios3_0.new
v2.drive(500)
v2.setUtility("GPS")
puts v2.wheel
puts v2.getUtility
v3 = Vios3_0.new
v3.setUtility("GPS1")
puts v3.getUtility
puts Vios3_0.seat