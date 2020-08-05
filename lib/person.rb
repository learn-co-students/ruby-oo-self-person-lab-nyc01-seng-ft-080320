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
    

end
