
# uses ARGV to get a single filename
filename = ARGV.first

# prints sentence (string)
# references "filename" variable assigned in last line
puts "We're going to erase #{filename}"
# prints sentence (string)
puts "If you don't want that, hit CTRL-C (^C)."
# prints sentence (string)
puts "If you do want that, hit RETURN."

# gets input from user
$stdin.gets

# prints sentence (string)
puts "Opening the file..."
# uses OPEN commang to open filename
# creates new file if filename doesn't exist
# 'w' opens file in WRITE mode
# assigns command + mode for filename to "target" variable
target = open(filename, 'w')

# prints sentence (string)
puts "Truncating the file.  Goodbye!"

# uses TRUNCATE command on "target" variable
# filename given by user is opened in WRITE mode
# contents of file are deleted
target.truncate(0)

# prints sentence (string)
puts "Now I'm going to ask you for three lines."

print "line 1: "
# uses gets.chomp to get a string
# assigns input to "line1" variable
line1 = $stdin.gets.chomp
print "line 2: "
# uses gets.chomp to get a string
# assigns input to "line2" variable
line2 = $stdin.gets.chomp
print "line 3: "
# uses gets.chomp to get a string
# assigns input to "line3" variable
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

=begin
# uses WRITE command on "target" variable
# writes string assigned to "line1" to file
target.write(line1)
# uses WRITE command on "target" variable
# writes newline to file
target.write("\n")
# uses WRITE command on "target" variable
# writes string assigned to "line2" to file
target.write(line2)
# uses WRITE command on "target" variable
# writes newline to file
target.write("\n")
# uses WRITE command on "target" variable
# writes string assigned to "line3" to file
target.write(line3)
target.write("\n")
=end

target.write("#{line1}\n#{line2}\n#{line3}\n")

puts "And finally, we close it."
# uses CLOSE command on "target" variable
target.close



# DRILL 2 - opens test.txt

=begin
filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}"
print txt.read
txt.close

print "Type the filename again:"
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
txt_again.close
=end