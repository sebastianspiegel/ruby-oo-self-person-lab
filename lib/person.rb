# your code goes here
class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account

    def initialize(name)
        @name = name 
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0, 10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0, 10)
    end

    def clean?
        @hygiene > 7 ? true : false 
    end
    
    def happy?
        @happiness > 7 ? true : false 
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        #needs to add 4 to hygine, using the hygine= method to keep track and keep it between 1-10
        #need the take_bath method to call up on the hygine= method
        self.hygiene += 4
        # @hygiene = hygiene.clamp(0, 10)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(name, topic)
        if topic == "politics"
            self.happiness -= 2
            name.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            name.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end
