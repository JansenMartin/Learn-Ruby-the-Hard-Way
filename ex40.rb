# Defines class "Song"
class Song

    #define method "initialize"
    # passes "lyrics" as argument (in this case, an array of strings)
    # assigns lyrics to Song class variable "lyrics"
    def initialize(lyrics)
        @lyrics = lyrics
    end

    # define method "sing_me_a_song"
    # .each loops over each item in array assigned to Song class variable "lyrics"
    # prints each item in the array to the screen
    def sing_me_a_song()
        @lyrics.each {|line| puts line}
    end
end

# happy_bday is an instance of the Song class
# ("Song" is like a module, and "happy_bday" is like "require")
# three strings are entered into an array
# the array is assigned to instance of class
# and entered into Song's initialize method as "lyrics"
happy_bday = Song.new(["Happy birthday to you", 
                "I don't want to get sued", 
                "So I'll stop right there"])

# bulls_on_parade is an instance of the Song class
# two strings are entered into an array
# the array is assigned to instance of class
# and entered into Song's initialize method as "lyrics"
bulls_on_parade = Song.new(["They rally around tha family",
                        "With pockets full of shells"])


# calls Song's "sing_me_a_song" method on "happy_bday"
# or, "happy_bday" instance of Song class is
# automatically entered into Song's "sing_me_a_song" method as an argument
# and "lyrics" are printed to screen
happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

puts
# DRILL 1

love_like_you = Song.new(["If I could begin to be",
    "half of what you think of me",
    "I could do about anything",
    "I could even learn how to love"])

here_comes_a_thought = Song.new(["Here comes a thought",
                        "that might alarm me",
                        "what someone said",
                        "and how it harmed me"])

love_like_you.sing_me_a_song()
puts
here_comes_a_thought.sing_me_a_song()
puts

# DRILL 2

its_over_lyrics = ["I was fine with the men", 
        "who would come into her life now and again", 
        "I was fine 'cause I knew", 
        "that they didn't really matter...until you"]

its_over_isnt_it = Song.new(its_over_lyrics)

its_over_isnt_it.sing_me_a_song()

