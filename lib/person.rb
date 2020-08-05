class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account


    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value > 10
            value = 10
        elsif value < 0
            value = 0
        end
        @happiness = value
    end

    def hygiene=(value)
        if value > 10
            value = 10
        elsif value < 0
            value = 0
        end
        @hygiene = value
    end

    def clean?
        self.hygiene > 7
    end
    
    def happy?
         self.happiness > 7
    end

    def get_paid(salary)
        self.bank_account += salary;
        'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4;
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.happiness += 2;
        self.hygiene -= 3;
        '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        self.happiness += 3;
        person.happiness += 3;
        "Hi #{person.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(person, topic)
        if topic == 'politics'
            self.happiness -= 2;
            person.happiness -= 2;
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1;
            person.happiness += 1;
            "blah blah sun blah rain"
        elsif topic != 'politics' || 'weather'
            "blah blah blah blah blah"
        end
    end



end
