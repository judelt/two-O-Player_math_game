require "./player"
require "./question"
require "byebug"

player1 = Player.new('player1', 1)
player2 = Player.new('player2', 2)

puts player1.inspect
puts player1

@count = 0


while (player1.alive? && player2.alive?) do 

  current_player = (@count % 2 == 0) ? player1 : player2

  puts '----- NEW TURN -----' if @count > 0
  question = Question.new
  puts "#{current_player.name}: #{question.display}"
  print '> '
  answer = gets.chomp

  if answer.to_i == question.answer
    puts 'YES! You are correct.'
    puts "P#{player1.number}: #{player1.lives}/3 vs P#{player2.number}: #{player2.lives}/3"    

  else 
    current_player.lives -= 1
    puts 'Seriously? No!'
    puts "P#{player1.number}: #{player1.lives}/3 vs P#{player2.number}: #{player2.lives}/3"
  end

  @count += 1

end 

if (player1.alive? == false)
  puts "#{player2.name} wins with a score of #{player2.lives}/3"
  puts '----- GAME OVER -----'
  puts 'Good bye!'
else
  puts "#{player1.name} wins with a score of #{player1.lives}/3"
  puts '----- GAME OVER -----'
  puts 'Good bye!' 
end 
