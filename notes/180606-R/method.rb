class Car
  attr_accessor :counter

  def initialize(c = 100)
    @counter = c
    @wheel = 4
  end

  def wheel
    @wheel
  end

  def wheel=(w)
    @wheel = w
  end

end

car = Car.new(1000)
puts car.counter
puts car.wheel
car.counter = 5000
car.wheel = 5
puts car.counter
puts car.wheel
