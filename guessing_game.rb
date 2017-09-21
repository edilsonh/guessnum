def greet
  puts "Hello, guess a number between 1 and 100..."
  print "number choosen: "
end

def compare_guess
  rand_num = rand(1..100)
  guess = []
  for i in 0..4
    number = gets.to_i
    chances = 4 - i
    print "\n"

    if guess.include?(number)
      puts "You just guessed that SMARTY"
    end

    if number === rand_num
      puts "You got it right! Play again later please!"
      break

    elsif number === 0
      puts "Invalid input, try again"

    elsif number > rand_num
      puts "Too high..."

    elsif 0 < number and number < rand_num
      puts "Too low..."

    end

    puts "You have #{chances} tries left"
    guess.push(number)
    if chances > 0
      print "Choose new number: "
    elsif chances === 0
      puts "You failed!"
      puts "The number was #{rand_num}"
    end
  end
end

greet
compare_guess
