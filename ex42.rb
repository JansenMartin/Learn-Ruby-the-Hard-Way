## Animal is-a object look at the extra credit
class Animal

    def eat_food(food)
        puts "Eating #{food} now."
    end

    attr_reader :name

end

## Dog is-a Animal
class Dog < Animal

    def initialize(name)
        ## Dog has-a name
        @name = name 
    end

    def eat_food
        super("kibble")
    end

end

## Cat is-a Animal
class Cat < Animal 

    def initialize(name)
        ## Cat has-a name
        @name = name
    end
end

## Person is-a object
class Person 

    def initialize(name)
        ## Person has-a name
        @name = name 

        ## Person has-a pet of some kind
        @pet = nil

        ## Person has-many favorite_things
        @favorite_things = []

        ## Person has-many physical_traits
        @physical_traits = {}
    end

    attr_accessor :pet, :favorite_things, :physical_traits

    def describe()
        puts "This is #{@name}!"
        puts "#{@name} has a pet named #{@pet.name}." unless @pet.nil?

        puts
        puts "Here are few of #{@name}'s favorite things:"
        @favorite_things.each {|item| puts item}

        puts
        puts "Now I'll describe #{@name}:"
        @physical_traits.each {|key, value| puts "#{key}: #{value}"}
    end
end

## Employee is-a Person
class Employee < Person 

    def initialize(name, salary)
        ## argument "name" is forwarded to Person's initialize method.
        # In other words, "call my parent's version of this method instead of mine!"
        ## more info here: http://rubylearning.com/satishtalim/ruby_overriding_methods.html 
        ##                 https://stackoverflow.com/questions/2597643/ruby-super-keyword 
        super(name)
        ## Employee has-a salary
        @salary = salary
    end

end

## Fish is-a object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish 
end

## Halibut is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")
rover.eat_food()
puts


## satan is-a cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet satan
mary.pet = satan

## frank is-a Employee
frank = Employee.new("Frank", 120000)

## frank has-a pet rover
frank.pet = rover

## frank has-a favorite things (tomato soup, crickets, vintage shoes)
frank.favorite_things = ["tomato soup", "crickets", "vintage shoes"]

# frank has-a physical_traits (Age, Sex, Height, Eyes, Hair)
frank.physical_traits = {"Age" => "37", "Sex" => "male", "Height" => "5'9", "Eyes" => "brown", "Hair" => "brown"}

frank.describe()

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()
