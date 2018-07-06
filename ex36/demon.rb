module Demon

    def Demon.start(choice)

        puts "A demon suddenly appears!  He scowls at you."

        if choice == "yes" || choice == "y"
            puts "'HOW DARE YOU CHANGE THIS FOOD. INGRATE!' he bellows."
        elsif choice == "no" || choice == "n"
            puts "'HOW DARE YOU REFUSE MY FOOD.  INGRATE!' he roars."
        else
            puts "'YOU WILL PAY FOR YOUR CRIMES, INGRATE!' he screams."
        end

        puts
        puts "What do you do?"

        choices = ["Throw scallops at him!", "Beg for forgiveness, wahhh!", "FIGHT FIGHT FIGHT!"]
        (1..choices.length).each do |number|
            puts "#{number}. %s" % choices[number - 1]
        end

        puts
        puts "Pick a number!"
        print "> "
        choice = $stdin.gets.chomp

        if choice == "1"
            puts "You flip the searing hot tray of scallops at the demon's face!"
            puts "The demon is distracted!"
            puts
            puts "Run away?  yes/no"
            print "> "

            escape = $stdin.gets.chomp.downcase

            if escape == "yes" || escape == "y"
                win("scallop demon")
            else
                game_over("The demon tears you to pieces!")
            end

        elsif choice == "2"
            puts "You grovel on your knees and beg for forgiveness!"
            puts "The demon says he'll spare you...IF you work at his scallop stand forever!"
            puts
            puts "Do you consent to eternal servitude at this scallop stand?  yes/no"
            print "> "

            work = $stdin.gets.chomp.downcase

            if work == "yes" || work == "y"
                win("scallop boss-demon")
            else
                game_over("'YOU'RE AN INGRATE AFTER ALL!' the demon roars.  You don't have a face anymore.")
            end

        elsif choice == "3"
            puts "Ohhh boy, here we go."
            puts "Maybe it's not too late to back out.  Fight or run?"
            demon_alive = true
            demon_tired = false

            while demon_alive
                print "> "
                answer = $stdin.gets.chomp.downcase

                if answer == "run" && !demon_tired
                    puts "Yeahhhh, never mind.  You high-tail it outta there."
                    game_over("Unfortunately, you're not fast enough.  The demon eats you alive.")
                elsif answer == "run" && demon_tired
                    puts "The demon is tired of your shenanigans.  It doesn't bother chasing after you."
                    demon_alive = false
                    win("demon fight")
                elsif answer == "fight" && !demon_tired
                    puts "You deck the demon across the face."
                    puts "It looks like it could use a nap..."
                    demon_tired = true
                elsif answer == "fight" && demon_tired
                    puts "You fist connects with the demon's face again.  It disappears in puff of smoke."
                    puts "Looks like you survived this encounter."
                    demon_alive = false
                    win("demon fight")
                end
            end
        end   
    end
end