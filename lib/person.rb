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
    returns "all about the benjamins"
  end

  def take_bath
  end

  def work_out
  end

  def call_friend
  end

  def start_conversation(person, topic)
  end


end
