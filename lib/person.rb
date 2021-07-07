require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(score)
        if score >= 0 && score <= 10
            @happiness = score
        elsif score <0
            @happiness = 0
        else
            @happiness = 10
        end

    end

    def hygiene=(score)
        if score >= 0 && score <= 10
            @hygiene = score
        elsif score <0
            @hygiene = 0
        else
            @hygiene = 10
        end
    end

    def clean?
        @hygiene >7 ? true :false
    end

    def happy?
        @happiness >7 ? true :false
    end

    def get_paid (salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene -3
        self.happiness = @happiness +2
        "♪ another one bites the dust ♫"
    end

    #
    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (friend, topic)
        case topic

        when 'politics'
        #dosomething
            self.happiness = @happiness  - 2
            friend.happiness = friend.happiness - 2
            return 'blah blah partisan blah lobbyist' 

        when 'weather'
            #binding.pry
            self.happiness = @happiness + 1
            friend.happiness = friend.happiness + 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end

    
end