=begin
puts "You enter a dark room with two doors.  Do you go through door #1, #2 or #3?"

print "> "
door = $stdin.gets.chomp

if door == "1"
    puts "There's a giant bear here eating a cheese cake.  What do you do?"
    puts "1. Take the cake."
    puts "2. Scream at the bear."

    print "> "
    bear = $stdin.gets.chomp

    if bear == "1"
        puts "The bear eats your face off.  Good job!"
    elsif bear == "2"
        puts "The bear eats your legs off.  Good job!"
    else 
        puts "Well, doing %s is probably better.  Bear runs away." % bear
    end

elsif door == "2"
    puts "You stare into the endless abyss of Cthulhu's retina."
    puts "1. Blueberries."
    puts "2. Yellow jacket clothespins."
    puts "3. Understanding revolvers yelling melodies."

    print "> "
    insanity = $stdin.gets.chomp

    if insanity == "1" || insanity == "2"
        puts "Your body survives powered by a mind of jello.  Good job!"
    else
        puts "The insanity rots your eyes into a pool of muck.  Good job!"
    end

elsif door == "3"
    puts "You walk into a courtroom, and now you're on trial for eating pizza with a fork.  How do you plea?"
    puts "1. Guilty"
    puts "2. Not Guilty"

    print "> "
    plea = $stdin.gets.chomp

    if plea == "1"
        puts "Well, that makes the prosecution's job easy.  They cut your head off.  Good job!"
    elsif plea == "2"
        puts "Too bad this is a kangaroo court, and you have no rights.  They cut your head off anyway.  Good job!"
    else
        puts "Sometimes, %s is the better choice.  You get the heck outta here!" % plea
    end

else 
    puts "You stumble around and fall on a knife and die.  Good job!"

end
=end

puts "You wake up in an empty cabin.  You see a few things to investigate.  Which item do you look at?"
puts "1. Rug"
puts "2. Picture frame"
puts "3. Air vent"
print "> "
item = $stdin.gets.chomp

if item == "1"
    puts "The rug gives off a strange, magical aura.  Do you lift it up?"
    puts "1. Yes"
    puts "2. Heck no"
    print "> "

    action = $stdin.gets.chomp

    if action == "1"
        puts "The rug smothers you!  AHHHHH!"

    elsif action == "2"
        puts "You starve and die.  Good job." 
    end

elsif item == "2"
    puts "You find a number tucked behind the frame.  A cell phone is next to it.  What do you do?"
    puts "1. Call the number"
    puts "2. Nothing"
    print "> "

    action = $stdin.gets.chomp

    if action == "1"
        puts "A nice officer is on the other line.  He'll come save you!"

    elsif action == "2"
        puts "You starve and die.  Good job."
    end

elsif item == "3"
    puts "You examine the air vent.  Looks like you could fit inside.  Hmm..."
    puts "Do you climb in?"
    puts "1. Yes"
    puts "2. No"
    print "> "

    action = $stdin.gets.chomp
        
    if action == "1"
        puts "You escape!  YAY YOU."
    elsif action == "2"
        puts "You starve and die.  Good job!"
    else 
        puts "That works too.  You escape.  YAY YOU."
    end
end