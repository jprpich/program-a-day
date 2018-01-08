# program requires faker
require 'faker'

# define Car class
class Car

  attr_accessor :seats, :color, :mileage, :brand

  def initialize(color, mileage, brand)
    @color = color
    @mileage = mileage
    @brand = brand
    @seats = 4  
    @distance = 0
  end

  def drive
    @distance += 1
  end

  def reverse
    @distance -= 1
  end

end

# use faker to generate multiple seed cars
cars = []

100.times do
  cars << Car.new(Faker::Color.color_name, Faker::Number.between(1000, 100000), Faker::Vehicle.manufacture)
end

# show user the cars in stock
puts "These are the cars in stock."
cars.each do |car|
  puts "\t#{car.brand}"
end


# have user choose the manufacturer and display info
while true

  print "type in a car manufacturer to see the specifications of the available cars or leave to exit shop: "
  brand = gets.chomp

  if brand == "leave"
    puts "Bye! See you later!"
    break
  
  else
    cars.each do |car|
      if brand == car.brand
        puts "#{car.brand} is #{car.color} and has #{car.mileage} miles on it!"
      end
    end

  end

end







