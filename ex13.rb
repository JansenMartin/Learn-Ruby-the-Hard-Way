=begin
first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
=end

=begin
first, second, third, fourth = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
puts "Your fourth variable is: #{fourth}"
=end

first, second = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"

# NOTE:
# gets.chomp DOES NOT work with ARGV
# use $stdin.gets.chomp instead
