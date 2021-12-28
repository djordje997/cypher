#!/usr/bin/env ruby
require_relative '../lib/rot.rb'
puts 'Please enter your text'
user_input = gets.chomp
puts 'Please enter number'
input_number_of_rot=gets.chomp.to_i

var=Rot.new.rot(input_number_of_rot,user_input)
