# frozen_string_literal: true

class OysterCard

  MAX_BALANCE = 90
  attr_reader :balance


  def initialize
    @balance = 0
    @in_use = false
  end
  def balance
    @balance
  end
  def top_up(money)
    # if (@balance += money) > MAX_BALANCE
    #   raise "Maximum balance allowed #{ MAX_BALANCE }"
    # else
    @balance += money
  end
  def in_journey?
    @in_use
  end 

  def touch_in
    @in_use = true
  end 
end 

