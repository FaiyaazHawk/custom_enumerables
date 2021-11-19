#tests for each custom enumerable
require './custom_enum.rb'

include Enumerable
numbers = [1,2,3,4,5,]


puts ".each vs my_each"
puts ".each"
numbers.each {|num| puts num }
puts "my_each"
numbers.my_each {|num| puts num}

puts "each_with_index vs my_each_with_index"
puts ".each_with_index"
numbers.each_with_index {|val, index| puts "value:#{val} index:#{index}"}
puts ".my_each_with_index"
numbers.my_each_with_index {|val, index| puts "value:#{val} index:#{index}"}

puts "select vs my_select"
puts "select"
puts numbers.select {|num| num.even?}
puts "my_select"
puts numbers.my_select {|num| num.even?}

puts "all? vs my_all?"
puts "all?"
puts numbers.all? {|num| num.is_a?(Integer)}
puts "my_all?"
puts numbers.my_all? {|num| num.is_a?(Integer)}

puts "any? vs my_any?"
puts "any?"
puts numbers.any? {|num| num > 4}
puts "my_any?"
puts numbers.my_any? {|num| num > 4}

puts "none? vs my_none?"
puts "none?"
puts numbers.none? {|num| num == 6}
puts "my_none?"
puts numbers.my_none? {|num| num == 6}