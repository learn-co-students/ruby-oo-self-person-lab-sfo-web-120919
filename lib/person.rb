# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :hygiene, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8


    end

    def happiness=(h)
        if h > 10 
            @happiness = 10
        elsif h < 0
            @happiness = 0
        else
            @happiness = h
        end
    end

        def hygiene=(hygiene)
            if hygiene > 10

                @hygiene = 10

            elsif hygiene < 0
                
                @hygiene = 0
            else 
                @hygiene = hygiene

            end
        end

            def happy?
                if happiness > 7
                    return true
                else
                    return false
                end
            end

            def clean?
                if hygiene > 7
                    return true
                else 
                    return false
                end
            end

            def get_paid(salary)
                @bank_account += salary
                return "all about the benjamins"
            end

            def take_bath
                self.hygiene= @hygiene += 4
                # if @hygiene <= 6
                #     @hygiene += 4 
                return  "♪ Rub-a-dub just relaxing in the tub ♫"
                # else 
                #     return @hygiene
                # end
            end

            def work_out
                self.hygiene= @hygiene -= 3
                self.happiness= @happiness += 2
                return "♪ another one bites the dust ♫"
            
            end

            def call_friend(friend)
                self.happiness= @happiness + 3
                friend.happiness= friend.happiness + 3
                return "Hi #{friend.name}! It's #{name}. How are you?"
            end

            def start_conversation(person,topic)
                
                if topic == "politics" 
                    person.happiness= person.happiness - 2
                    self.happiness= self.happiness - 2
                    return "blah blah partisan blah lobbyist"
                elsif topic == "weather"
                    person.happiness= person.happiness + 1
                    self.happiness= self.happiness + 1
                    return 'blah blah sun blah rain' 
                else 
                    return "blah blah blah blah blah"
                end

            end
    
end

