require "./demon.rb"
require "./bear.rb"

def dried_fruit
    puts "The dried fruit stand isn't very busy..."
    puts "Suddenly, you're captivated by a beautiful starfruit."
    puts "It will grant you one wish.  What do you wish for?"
    puts "World peace?  Immortality?  A castle?"

    puts
    print "> "
    choice = $stdin.gets.chomp.downcase
    puts

    if choice.include?("world") || choice.include?("peace")
        puts "Congratulations!  You are pure in heart."
        exit(0)
    elsif choice.include? "immortality"
        puts "Wow.  Forever is a long time.  Are you sure?"

        print "> "
        choice = $stdin.gets.chomp.downcase

        if choice == "yes"
            game_over("You lead a lonely existence for eternity.")
        elsif choice == "no"
            puts "Better rethink your life choices..."
            dried_fruit
        else
            game_over("Get a life!")
        end

    elsif choice.include?("castle")

        puts "You're magically transported to a castle."
        Bear.start
    else
        puts "Maybe you need to think over this more carefully..."
        puts
        dried_fruit
    end

end

def soymilk_icecream
    puts "A gaggle of schoolgirls are happily eating their ice cream."
    puts "Do you wait in line?  Or cut ahead of everyone?"

    puts
    print "> "
    choice = $stdin.gets.chomp.downcase
    puts

    if choice.include?("wait")
        puts "Good things come to those who wait."
        puts "It's the best damn ice cream you've ever had."
        puts "What an amazing day."
        exit(0)
    elsif choice.include?("cut")
        puts "Hey!! Cutting people is illegal, you know!"
        game_over("The police haul you to jail!  FOREVER!")
    else 
        puts "Sorry, that's not an option."
        puts
        soymilk_icecream
    end

end

def scallops
    puts "Scallops sizzle on top of a searing-hot plate."
    puts "Eat one?"

    print "> "
    choice = $stdin.gets.chomp.downcase
    puts

    if choice == "no"
        Demon.start(choice)
    elsif choice == "yes"
        puts "The scallop is savory and sweet.  Its buttery flavor bursts through your mouth."
        puts "Do you think it'd taste better with salt or pepper? (yes/no)"

        print "> "
        salt_or_pepper = $stdin.gets.chomp.downcase
        puts

        if salt_or_pepper == "yes"
            Demon.start(choice)
        elsif salt_or_pepper == "no"
            puts "Don't fix what ain't broke, am I right?"
        else
            puts "You eat it without adding anything."
        end

        puts "Time for some dessert!  Dried fruit or soymilk ice cream?"

        print "> "
        choice = $stdin.gets.chomp.downcase
        puts

        if choice.include?("fruit")
            dried_fruit
        elsif choice.include?("cream")
            soymilk_icecream
        else 
            puts "Guess you still want some scallops..."
            puts
            scallops
        end

    else 
        puts "It's a simple yes or no question."
        puts
        scallops
    end
end

def game_over(why)
    puts why, "Good job!"
    exit(0)
end

def win(boss_defeated)
    puts "Congratulations!  You've solved my #{boss_defeated} puzzle."
    exit(0)
end

def start
    puts "You're at the food market.  Let's go shopping!"

    print "> "
    choice = $stdin.gets.chomp.downcase

    if  choice == "no"
        puts "Come on.  What else are you going to do?"
        start
    elsif choice == "okay"
        puts "You see a scallops stand, a dried fruit store, and a soymilk ice cream shop.  Where to?"
        
        print "> "
        choice = $stdin.gets.chomp
        puts

        if choice.include?("scallop")
            scallops
        elsif choice.include?("fruit")
            dried_fruit
        elsif choice.include?("cream")
            soymilk_icecream
        else
            game_over("You waste your day at Starbucks instead.")
        end
    end
end

start