# Uses ARGV to get filename.

filename = ARGV.first 

# uses OPEN command to open filename
# returns value (file object), sets as "txt" variable
txt = open(filename)

# prints a sentence (string) with a variable
puts "Here's youre file #{filename}:"
# "Hey txt!  Do your READ command with no parameters!""
print txt.read 
# close the txt file object
txt.close

puts

# prints a sentence (string) with a newline
print "\nType the filename again: "
# uses gets.chomp to get a filename
file_again = $stdin.gets.chomp

# uses OPEN command to open file
# returns value (file object), sets as "txt_again" variable
txt_again = open(file_again)

# calls READ function on "txt_again" variable
# "Hey txt_again!  Do your READ command with no paramenters!"
print txt_again.read
# close the txt_again file object
txt_again.close


