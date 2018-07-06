module Bear

    def Bear.start

        puts "A bear looms over you, its teeth gleaming in the moonlight."
        puts "Also, it's wearing a cape and clown shoes."

        puts
        puts "What do you do?"
        puts
        choices = ["Laugh at the silly bear", "Dash into a different room", "Fight the bear"]
        (1..choices.length).each do |number|
            puts "#{number}. %s" % choices [number - 1]
        end

        puts
        print "Pick a number! > "
        response = $stdin.gets.chomp
        bear_alive = true
        bear_confused = false

        while bear_alive == true
            if response == "1" && !bear_confused # response is LAUGH && !bear_confused
                puts "The bear looks at you increduously.  It's confused by your laughter."
                bear_confused = true
                puts "Better take this chance to do something else!"
                puts  
                print "Pick another number! > "
                response = $stdin.gets.chomp
                puts
            elsif response == "1" && bear_confused # response is LAUGH && bear_confused
                puts "The bear gives a mighty roar." # bear eats you
                game_over("It eats you alive.") # GAME OVER :(
            elsif response == "2" && !bear_confused # response is DASH && !bear_confused
                puts "You run as hard as you can!  But the bear catches you." # bear eats you
                game_over("You're now it's tasty meal.")# GAME OVER :(
            elsif response == "2" && bear_confused # response is DASH && bear_confused
                puts "You run as hard as you can.  (The bear is shocked!)"
                puts  
                print "How many feet do you go? >"
                feet = $stdin.gets.chomp.to_i
                puts

                if feet <= 20 # feet is less than 20
                    puts "Oh no!   You're not fast enough." # bear eats you
                    game_over("The bear has no trouble catching you.  You're now its dinner.") # GAME OVER
                elsif feet > 20 # steps is more than 20
                    puts "Wow, you're a fast runner!  You claim the castle's throne room for yourself."
                    puts "The bear dissolves into a puff of smoke." # Claim throne
                    bear_alive = false # bear_alive = false
                    win("castle bear") # WIN
                end
                
            elsif response == "3" && !bear_confused # response is FIGHT && !bear_confused
                puts "lol nice try."# Bear wins
                game_over("The bear easily smacks your face off.") # GAME OVER
            elsif response == "3" && bear_confused # response is FIGHT && bear_confused
                puts "The bear is psychologically crushed by your laughter.  You destroy him with your BARE HANDS. (Har har har)"
                puts "The castle is now yours.  Are you happy now?" # You win 
                bear_alive = false # bear_alive = false
                win("castle bear") # WIN
            else 
                puts "This is a life-threatining situation here!"  
                print "Pick a number between 1 and 3! > "
                response = $stdin.gets.chomp 
                puts
            end

        end
    end
end