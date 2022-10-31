class Person

attr_accessor :bank_account
# attr_accessor :hygiene

attr_reader :name
attr_reader :happiness
attr_writer :happiness
attr_reader :hygiene
attr_writer :hygiene


def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)

    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene

end

def happiness=(value) 

    # if self.happiness += value < 0
    #     @happiness = 0
    #     elsif self.happiness += value > 10
    #         @happiness = 10
    #     end
    @happiness = value.clamp(0,10)
end

def happiness
    @happiness
end

def hygiene=(value) 

    # if self.happiness += value < 0
    #     @happiness = 0
    #     elsif self.happiness += value > 10
    #         @happiness = 10
    #     end
    @hygiene = value.clamp(0,10)
end

def hygiene
    @hygiene
end

def clean? 
    if self.hygiene > 7
        true
    else
        false
    end
end

def happy?
    if self.happiness > 7
        true
    else
        false
    end
end

def get_paid(amount)
  self.bank_account += amount
  "all about the benjamins"
end

def take_bath

    self.hygiene += 4
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
    "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)

    if topic == "politics"
        self.happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end

end


end
