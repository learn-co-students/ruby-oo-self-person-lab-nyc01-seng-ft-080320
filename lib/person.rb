
require 'pry' 
# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene 
    attr_accessor :bank_account 

     def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
     end

   def happiness= (happiness)
    if happiness <= 10 && happiness >= 0
        @happiness = happiness
    else 
        puts "happiness must be between 0 and 10"
    end 
end

    def hygiene= (hygiene)
    if hygiene <= 10 && hygiene >= 0
        @hygiene = hygiene
    else
        print "hygiene must be between 0 and 10"
    end 

   end 

   def clean?
    if @hygiene > 7
        return "true"
    else
        return "false"
    end
end

    def happy?
        if @happiness > 7
            return "true"
        else
            return "false"
        end
    end

    def get_paid (salary_amount)
        @bank_account += salary_amount 
        puts "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        puts "♪ Rub-a-dub just relaxing in the tub ♫"
        if @hygiene > 10
            @hygiene = 10
        end
    end

    def work_out
        @happiness += 2 
        @hygiene -= 3
        puts "♪ another one bites the dust ♫"
        if @hygiene < 0 
            @hygiene = 0
        end

        if @happiness > 10
            @happiness = 10
        end
    end

    def call_friend(friend)
        @happiness += 3
        puts "Hi #{friend.name}! It's #{self.name}. How are you?"
        if @happiness > 10 
            @happiness = 10
        end 
    end 

    def start_conversation(person, topic)
        
        if topic = "politics"
            self.happiness -= 2
            person.happiness -= 2
            puts "blah blah partisan blah lobbyist"
        elsif topic = "weather"
            puts "blah blah sun blah rain"
        else 
            puts "blah blah blah blah blah"
        end 
    end
     
end 



amy = Person.new('Amy')
person1 = Person.new('Jon')
binding.pry