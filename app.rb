require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts " "
puts "OYEZ ! OYEZ ! Brave gens, nous voici tous réunis ici présent afin d'obserser avec nos yeux ébahit un combat !"
puts " " 

puts "À ma droite 'Dorah'"
player1 = Player.new("Dora")

puts "À ma gauche 'Babouch'"
player2 = Player.new("Babouch")

puts " "

puts " \\ COMMENT SE PORTE NOS DEUX COMBATTANTS //"
player1.show_state
player2.show_state

while player1.life_points > 0 && player2.life_points > 0 #boucle while qui part du player1 puis invoque les life poits, si > à 0 et pareil pour le deux 

    puts " "
    puts "FIGHT FIGHT FIGHT FIGHT FIGHT FIGHT FIGHT FIGHT"
    player1.attacks(player2)
    break if player2.life_points <= 0
    player2.attacks(player1)

    puts " "

    player1.show_state
    player2.show_state
end

binding.pry