def while_loop(increment, max_limit)

i = 0
numbers = []

while i < max_limit
    puts "At the top i is #{i}"
    numbers.push(i)

    i += increment
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
end

    puts "The numbers: "
    numbers.each {|num| puts num}
end

while_loop(2, 4)


#while_loop(4)


# remember you can write this 2 other ways?
#numbers.each {|num| puts num}

=begin
numbers.each do |num|
    puts num
end

puts

for num in numbers
    puts "This is count #{num}"
end
=end