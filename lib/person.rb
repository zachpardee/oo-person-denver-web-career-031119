require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name
  attr_reader :happiness
  attr_reader :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(number)
    @happiness = number
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(number)
    @hygiene = number
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end


  def get_paid(salary_amount)
    @bank_account += salary_amount
    return "all about the benjamins"
  end

  def take_bath
    # binding.pry
    # hygiene= (self.hygiene + 4)
    self.hygiene=(@hygiene + 4)
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.happiness=(@happiness + 2)
    self.hygiene=(@hygiene - 3)
    return '♪ another one bites the dust ♫'
  end

  def call_friend(person)
    self.happiness=(@happiness + 3)
    person.happiness=(person.happiness + 3)
    return "Hi #{person.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when 'politics'
      self.happiness=(@happiness - 2)
      person.happiness=(person.happiness - 2)
      return 'blah blah partisan blah lobbyist'
    when 'weather'
      self.happiness=(@happiness + 1)
      person.happiness=(person.happiness + 1)
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end


end
