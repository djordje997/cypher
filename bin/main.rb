#!/usr/bin/env ruby
require_relative '../lib/rot.rb'
puts 'Please enter your text'
user_input = gets.chomp
var=Rot.new.rot(13,user_input)
