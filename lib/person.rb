# your code goes here
require 'pry'
class Person
  attr_reader :name, :reader, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(new_happiness)
    if new_happiness > 10
      @happiness = 10
    elsif new_happiness < 0
      @happiness = 0
    else
      @happiness = new_happiness
    end
  end

  def happy?
    @happiness > 7
  end

  def hygiene=(new_hygiene)
     if new_hygiene > 10
      @hygiene = 10
     elsif new_hygiene < 0
      @hygiene = 0
     else
      @hygiene = new_hygiene  
     end
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene + 4  
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out

      self.hygiene = @hygiene - 3
      self.happiness = @happiness + 2
      "♪ another one bites the dust ♫"
    
  end 

  def call_friend(friend)
    
      self.happiness = @happiness + 3
      friend.happiness = friend.happiness + 3
      "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(friend, topic)

    if topic == 'politics'
      friend.happiness = friend.happiness - 2
      self.happiness = self.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      friend.happiness = friend.happiness + 1
      self.happiness = self.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end 

  end


end

#p1 = Person.new("frog")

