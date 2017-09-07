require("rspec")
require("coin_combo")
require("pry")

describe("coin") do
  combos = Money.new(4)
  it("takes a number of cents under 5 and expects a number of coins to be returned") do
    expects(combos.coin)to.(eq("4 pennies"))
  end
end
