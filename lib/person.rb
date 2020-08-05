require 'pry'

class Person

    attr_reader :name
    attr_accessor :bank
    attr_writer :hygiene, :happiness

    @@People = []

    def initialize(name, bank=25, happiness=8, hygiene=8)
        @name = name
        @bank = bank
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
        @bank = salary + @bank
        puts "all about the benjamins"
    end

    def take_bath
        @hygiene = @hygiene + 4
        puts "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness = @happiness + 2
        @hygiene = @hygiene - 2
        puts "♪ another one bites the dust ♫"
    end

    def call_friend(friend)

        @@People.each do |friends|
        if friend == friends
            friend.happiness += 3
            self.happiness += 3
        elsif
        puts "Hi #{friend.name}! It's #{self.name}. How are you?"
        end
        end
    end

    def start_conversation(starter, topic)

        if topic == "Politics"
            puts "blah blah partisan blah lobbyist"
            starter.happiness -= 1
            self.happiness -= 1
        elsif topic == "Weather"
            starter.happiness += 1
            self.happiness += 1
            puts "blah blah sun blah rain"
        elsif !topic == "Politics" || "Weather"
            puts "blah blah blah blah blah"
        end
    end

end


#kevin = Person.new("Kevin")
#russell = Person.new("Russell")


#binding.pry

#kevin.start_conversation(russell, "Politics")

#russell.hygiene = 12
