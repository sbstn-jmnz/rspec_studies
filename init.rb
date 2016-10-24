#!/usr/bin/env ruby

require_relative('lib/car')

puts
puts "Ingrese informacion del auto a comprar"
puts

print "Make: "
make = gets.chomp

print "Year: "
year = gets.chomp

print "Color: "
color = gets.chomp

car = Car.new(make: make, year: year, color: color)

puts
puts "El auto que quiere comprar es: #{car.full_name}"
puts
