require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

new_employee = @store2.employees.create(first_name: "Tomas", last_name: "Vanek", hourly_rate: 45)

puts new_employee.password

puts new_employee.inspect
