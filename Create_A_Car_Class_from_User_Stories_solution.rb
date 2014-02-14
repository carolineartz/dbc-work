
# create car
# customize model
# customize color
# define driving distance
# get speed
# turn left/right
# accelerate & decelerate
# define speed
# track total distance
# start/stop
# display last action



class Car
  attr_reader :color, :make, :driving, :speed, :distance, :heading, :status
  CARDINAL_DIRECTIONS = ['North', 'East', 'South', 'West']

  def initialize(color, make, heading = 'North', distance = 0)
    @color = color
    @make = make
    @driving = false
    @speed = 0
    @distance = distance
    @heading = heading
    @status = 'Parked and ready to go!'
  end

  def accelerate(speed_limit)
    @driving = true
    until @speed == speed_limit
        @speed += 1
        puts @speed
        sleep(0.25)
    end
    @status = "Pizza's getting cold! On the move and burning rubber. Crusing at #{speed_limit}mph."
  end

  def decelerate(speed_limit)
    @driving = true
    until @speed == speed_limit
      @speed -= 1
      puts @speed
      sleep(0.25)
    end
    @status = "Pumped the breaks! Creeping at #{speed_limit}mph."
  end

  def stop
    decelerate(0)
    @driving = false
    @status = 'On hold. Not currently moving...'
  end

  def drive(distance_traveled)
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


#car = Car.new
#car.class == Car

car = Car.new('red', 'buick')
puts car.color == 'red'
puts car.make == 'buick'
puts car.driving == false
puts car.speed == 0
puts car.status 

car.accelerate(25)
car.speed == 25
car.driving == true
puts car.status 

car.decelerate(15)
car.speed == 15
car.driving == true
puts car.status 

car.stop
car.driving == false
car.speed == 0
puts car.status 

car.drive(1.5)
car.distance == 1.5
car.drive(2.0)
car.distance == 3.5
puts car.status 

puts car.heading == 'North'
car.turn_left
puts car.status 
puts car.heading == 'West'
car.turn_left
puts car.status 
puts car.heading == 'South'
car.turn_left
puts car.status 
puts car.heading == 'East'
car.turn_right
puts car.status 
puts car.heading == 'South'
car.turn_right
puts car.status 
puts car.heading == 'West'
car.turn_right
puts car.status 
puts car.heading == 'North'
car.turn_right
puts car.status 
puts car.heading == 'East'
car.turn_right
puts car.status 
puts car.heading == 'South'


