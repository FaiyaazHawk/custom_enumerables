#tests for each custom enumerable
require './custom_enum.rb'

include Enumerable
numbers = [1,2,3,4,5]


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