#! usr/bin/env ruby
require_relative('coin_combo')

puts "Enter the ammount of cents to convert to coins"
cent_input = 0
cent_input = gets.chomp
cent_input = Integer(cent_input)

money = Money.new(cent_input)
puts money.coin_combos
