require('rspec')
require('coin_combo')
require('pry')

describe ("Money#coin_combos") do

  combos = Money.new(4)
  it("takes a number of cents under 5 and expects a number of coins to be returned") do
    expect(combos.coin_combos).to(eq("4 pennies"))
  end
  combos1 = Money.new(10)
  it("takes a 10 cents and expects a number of coins to be returned") do
    expect(combos1.coin_combos).to(eq("1 dime"))
  end
  combos2 = Money.new(1)
  it("takes a 1 cent and expects a number of coins to be returned") do
    expect(combos2.coin_combos).to(eq("1 penny"))
  end
  combos3 = Money.new(25)
  it("takes a number of cents under 5 and expects a number of coins to be returned") do
    expect(combos3.coin_combos).to(eq("1 quarter"))
  end
  combos4 = Money.new(50)
  it("takes a number of cents under 5 and expects a number of coins to be returned") do
    expect(combos4.coin_combos).to(eq("2 quarters"))
  end
  combos5 = Money.new(20)
  it("takes 20 cents and expects a number of coins to be returned") do
    expect(combos5.coin_combos).to(eq("2 dimes"))
  end
  combos6 = Money.new(5)
  it("takes a number of cents under 5 and expects a number of coins to be returned") do
    expect(combos6.coin_combos).to(eq("1 nickel"))
  end
  combos7 = Money.new(1356)
  it("takes a number of cents under 5 and expects a number of coins to be returned") do
    expect(combos7.coin_combos).to(eq("54 quarters, 1 nickel, 1 penny"))
  end
end
