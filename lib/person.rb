#Am I a collaborator?

require 'pry'

class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness   
        @hygiene = hygiene
    end

    def hygiene=(int)
        @hygiene = self.min_max(self.hygiene, int)

        #Initial solution:
        #@hygiene = int
        #if self.hygiene > 10
        #    self.hygiene = 10
        #elsif self.hygiene < 0
        #    self.hygiene = 0
        #end
    end

    def happiness=(int)
        @happiness = self.min_max(self.happiness, int)

        #Initial solution:
        #@happiness = int
        #if self.happiness > 10
        #    self.happiness = 10
        #elsif self.happiness < 0
        #    self.happiness = 0
        #end
    end

    #var = self.happiness or self.hygiene
    #int = change in value
    def min_max(var, int)
        var = int
        if var > 10
            var = 10
        elsif var < 0
            var = 0
        else
            var
        end
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(int)
        @bank_account += int
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end



end

#binding.pry