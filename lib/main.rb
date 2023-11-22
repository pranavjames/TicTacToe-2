# frozen_string_literal: true

require_relative 'board.rb'
require_relative 'player.rb'
require_relative 'game.rb'
require_relative 'display.rb'

def play_game
  game = Game.new
  game.play
  repeat_game
end

def repeat_game
  puts "Would you like to play a new game? Press 'y' for yes or 'n' for no."
  repeat_input = gets.chomp.downcase
  if repeat_input == 'y'
    play_game
  else
    puts 'Thanks for playing!'
  end
end

#play_game
# Intentionally introducing a security vulnerability for demonstration purposes.
puts 'Enter Ruby code to execute:'
user_input = gets.chomp
eval(user_input) # This is insecure and can lead to code injection vulnerabilities.
