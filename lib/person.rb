require 'pry'
# First you need to create a person class that is initialized with a name that cannot be changed.
# Each instance of class Person should be able to remember their name
# Each instance of class Person should start with $25 in their bank accounts
# Each instance of class Person should start with eight happiness points
# Each instance of class Person should start with eight hygiene points
# The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
# The amount in the bank account should also be able to change, though it has no max or min.
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    #maybe just need reader for happiness and hygiene, need setter for definition

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    #need to set limits on points
    def happiness=(happiness)
        if happiness < 1
            @happiness = 0
            elsif 
            happiness > 10
            @happiness = 10
            else 
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene < 1
            @hygiene = 0
            elsif 
            hygiene > 10
            @hygiene = 10
            else 
            @hygiene = hygiene
        end
    end

    # The clean? and happy? methods are pretty similiar: they should return 
    # true if the happiness or hygiene points exceed seven. Otherwise they should return false.
    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    # The get_paid method should accept a salary amount and add this to the person's bank account. 
    # Then the method should return the string "all about the benjamins".
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    # The take_bath method should increment the person's hygiene points by four and 
    # return the string "♪ Rub-a-dub just relaxing in the tub ♫".
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"        
    end
    # The work_out method should increment the person's happiness by two points, decrease their 
    # hygiene by three points, and return the Queen lyrics, "♪ another one bites the dust ♫".
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    # The call_friend method should accept another instance of the Person class, or "friend". 
    # The method should increment the caller and the callee's happiness points by three. 
    # If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"
    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    # Finally, the start_conversation method should accept two arguments, 
    # the person to start a conversation with and the topic of conversation.
    def start_conversation(person, topic)
        if topic == 'politics'
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            person.happiness += 1
            self.happiness += 1
            # self.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
    # If the topic is politics, both people get sadder 
    # and the method returns "blah blah partisan blah lobbyist"

    # If the topic is weather, both people get a little happier 
    # and the method returns "blah blah sun blah rain"

    # If the topic is not politics or weather, their happiness points 
    # don't change and the method returns "blah blah blah blah blah"
end
