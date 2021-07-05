require 'pry'

class Person

    attr_reader :name
    attr_accessor :bank_account
    attr_writer :hygiene, :happiness

    @@People = []

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        @@People << name
    end

    def hygiene
        @hygiene.clamp(0, 10)
    end

    def happiness
        @happiness.clamp(0, 10)
    end


    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account = salary + @bank_account
        "all about the benjamins"
    end

    def take_bath
        @hygiene = self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness = self.happiness += 2
        @hygiene = self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)

        [friend, self].each do |friends|
            friends.happiness += 3
        end
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end


    def start_conversation(starter, topic)

        if topic == "politics"
            starter.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            starter.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        elsif !topic == "politics" || "weather"
            "blah blah blah blah blah"
        end
    end

    def self.all
        @@People
    end

end


#kevin = Person.new("Kevin")
#russell = Person.new("Russell")


#binding.pry

#kevin.start_conversation(russell, "Politics")

#russell.hygiene = 12
