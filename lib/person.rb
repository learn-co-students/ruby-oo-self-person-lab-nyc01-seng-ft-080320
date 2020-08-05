require "pry"
class Person
    
    # creating setter/getter for name
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    # pass name into new instance 

   def initialize(name)
    
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

   end

    def happiness=(num)
       @happiness = check_num(num) 
    end

    def hygiene=(num)
        @hygiene = check_num(num)
    end

    def check_num(num)
        if num >10
            return 10
        elsif num < 0
            return 0
        else
            return num
         end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist" 
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain" 
        else
            return 'blah blah blah blah blah'
        end

    
    end
end
#binding.pry

# First you need to create a person class that is initialized with a name that cannot be changed.
# - Each instance of class `Person`should be able to remember their name
# - Each instance of  class `Person` should start with $25 in their bank accounts
# - Each instance of  class `Person` should start with eight happiness points
# - Each instance of  class `Person` should start with eight hygiene points
# - The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and  0 respectively
# - The amount in the bank account should also be able to change, though it has no max or min.

# 1. The `clean?` and `happy?` methods are pretty similiar: they should return `true` if the happiness or hygiene points exceed seven. Otherwise they should return false.

# 2. The `get_paid` method should accept a salary amount and add this to the person's bank account. Then the method should return the string "all about the benjamins".

# 3. The `take_bath` method should increment the person's hygiene points by four and return the string "♪ Rub-a-dub just relaxing in the tub ♫".

# 4. The `work_out` method should increment the person's happiness by two points, decrease their hygiene by three points, and return the Queen lyrics, "♪ another one bites the dust ♫".

# 5. The `call_friend` method should accept another instance of the Person class, or "friend". The method should increment the caller and the callee's happiness points by three. If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"

# 6. Finally, the `start_conversation` method should accept two arguments, the person to start a conversation with and the topic of conversation.
#   * If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
#   * If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
#   * If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".