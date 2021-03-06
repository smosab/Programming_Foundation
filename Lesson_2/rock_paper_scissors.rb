# Rock Paper Scissors

VALID_CHOICES = %w(rock paper scissors)

def win?(first, second)
  (first == 'paper' && second == 'rock') ||
    (first == 'rock' && second == 'scissors') ||
    (first == 'scissors' && second == 'paper')
end

loop do
  def display_result(player, computer)
    if win?(player, computer)
      prompt("You won!")
    elsif win?(computer, player)
      prompt("Computer won!")
    else prompt("It's a tie!")
    end
  end

  # def test_method
  #   prompt('test message')
  # end
  # test_method

  def prompt(message)
    Kernel.puts("=> #{message}")
  end

  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose #{choice}, the computer chose #{computer_choice}")

  display_result(choice, computer_choice)

  prompt("Do you want to play again?(y/n)")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

# My version:
# loop do

#   prompt("Choose one: rock, paper, scissors")

#   choice = Kernel.gets().chomp()
#   choices = %w(rock paper scissors)
#   computer_choice = choices.shuffle[1]

#   prompt("The computer's choice is #{computer_choice}")

#   if (choice == 'rock' and computer_choice == 'rock') then prompt("Tie!")
#   elsif (choice =='paper' and computer_choice == 'rock') then prompt("You win!")
#   elsif (choice == 'scissors' and computer_choice == 'rock') then prompt("You lose!")

#   elsif (choice =='rock' and computer_choice == 'paper') then prompt("You lose!")
#   elsif (choice =='paper' and computer_choice == 'paper') then prompt("Tie!")
#   elsif (choice =='scissors' and computer_choice == 'paper') then prompt("You win!")

#   elsif (choice =='rock' and computer_choice == 'scissors') then prompt("You win!")
#   elsif (choice =='paper' and computer_choice == 'scissors') then prompt("You lose!")
#   elsif (choice =='scissors' and computer_choice == 'scissors') then prompt("Tie")
#   end

#   prompt("Play again?(y/n)")
#   play_again = Kernel.gets().chomp()

#   break if play_again.upcase == 'N'
# end
