class Person

    attr_reader :name, :bank_account, :hygiene, :happiness

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def hygiene=(new_hygiene)
        @hygiene = new_hygiene.clamp(0,10)
    end

    def happiness=(new_happiness)
        @happiness = new_happiness.clamp(0,10)
    end

    def bank_account=(new_bank_account)
        @bank_account = new_bank_account
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(money)
        self.bank_account += money
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(self.hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(self.hygiene - 3)
        self.happiness=(self.happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness=(friend.happiness + 3)
        self.happiness=(self.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness=(friend.happiness - 2)
            self.happiness=(self.happiness - 2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness=(friend.happiness + 1)
            self.happiness=(self.happiness + 1)
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

        

end

