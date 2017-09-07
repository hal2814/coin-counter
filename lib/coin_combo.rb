#! usr/bin/env ruby

class Money
  attr_accessor(:amount,:pennies, :nickels, :dimes, :quarters)
  # attr_(:pennies, :nickels, :dimes, :quarters)
  def initialize(amount)
    @amount = amount
    @quarters = 0
    @dimes = 0
    @nickels = 0
    @pennies = 0
  end

  def coin_combos
    coin(25)
    coin(10)
    coin(5)
    coin(1)
    print_money
  end

  def print_money
    output = ""
    if @quarters != 0 && @quarters != 1
      output = output + "#{@quarters} quarters"
    elsif @quarters == 1
      output = output + "#{@quarters} quarter"
    end
    if @dimes != 0 && @dimes != 1
        output = output + ", #{@dimes} dimes"
    elsif @dimes == 1
      output = output + ", #{@dimes} dime"
    end
    if @nickels != 0 && @nickels != 1
        output = output + ", #{@nickels} nickels"
    elsif @nickels == 1
      output = output + ", #{@nickels} nickel"
    end
    if @pennies != 0 && @pennies != 1
        output = output + ", #{@pennies} pennies"
    elsif @pennies == 1
      output = output + ", #{@pennies} penny"
    end
    if output[0] == ',' && output[1] == ' '
      output[0] = ''
      output[0] = ''
    end
    return output
  end

  def coin(coinValue)
    remainder = @amount % coinValue
    quotient = @amount / coinValue
    if coinValue == 25
      @quarters = quotient
    elsif coinValue == 10
      @dimes = quotient
    elsif coinValue == 5
      @nickels = quotient
    elsif coinValue == 1
      @pennies = quotient
    end
    @amount = remainder
  end
end


# def coin(coinValue,coinType)
#   amount = 1111
#   remainder = amount % coinValue
#   quotient = amount / coinValue
#   coinType = quotient
#   amount = remainder
#   return coinType
# end
