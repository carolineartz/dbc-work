class Car
  attr_accessor :color, :make, :model, :driving, :speed, :distance, :heading, :status
  CARDINAL_DIRECTIONS = ['North', 'East', 'South', 'West']

  def initialize(color, make, model, heading = 'North', distance = 0)
    @color = color
    @make = make
    @model = model
    @driving = false
    @speed = 0
    @distance = distance
    @heading = heading
    @status = "#{color.capitalize} #{make} #{model} full of pizza and ready to go!"
  end

  def accelerate(speed_limit)
    @driving = true
    until @speed == speed_limit
      @speed += 1
      puts @speed
      # sleep(0.25)
    end
    @status = "On the move and burning rubber. cruising at #{speed_limit} mph."
  end

  def decelerate(speed_limit)
    @driving = true
    until @speed == speed_limit
      @speed -= 1
      puts @speed
      # sleep(0.25)
    end
    @status = "Pumped the breaks! Creeping at #{speed_limit} mph."
  end

  def stop
    decelerate(0)
    @driving = false
    @status = "Stopped."
    yield if block_given?
  end

  def drive(distance_traveled)
    @status = "Driving #{distance_traveled} miles."
    @distance += distance_traveled
  end

  def turn_left
    @heading = CARDINAL_DIRECTIONS[CARDINAL_DIRECTIONS.index(@heading) - 1]
    @status = "On the move. Just hung a louie; currently heading #{@heading}."
  end

  def turn_right
    @heading = CARDINAL_DIRECTIONS.reverse[CARDINAL_DIRECTIONS.reverse.index(@heading) - 1]
    @status = "Making moves. Just hung a ricky; currently heading #{@heading}."
  end

end



################### DRIVER CODE ##########################


car = Car.new('black', 'Lamborghini', 'Murcielago')
puts car.color == 'black'
puts car.make == 'Lamborghini'
puts car.model == 'Murcielago'
puts car.driving == false
puts car.speed == 0
puts car.status

car.accelerate(25)
puts car.status

car.drive(0.25)
puts car.status

car.stop
puts car.status

car.turn_right
puts car.status

car.accelerate(35)
puts car.status

car.drive(1.5)
puts car.status

puts "School zone. Crap, I'm going #{car.speed - 15}mph over. Gotta slow down."
car.decelerate(15)
puts car.status

car.drive(0.25)
puts car.status

car.stop
puts car.status

car.turn_left
puts car.status

car.accelerate(35)
puts car.status

car.drive(1.4)
puts car.status

car.stop { car.status = "Arrived! Logging #{car.distance} miles!" }
puts car.status
