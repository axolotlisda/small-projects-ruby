# game
module Colors
  def color_choice
    %w[R G C P O Y B W]
  end

  def ai
    i = 0
    b = Array.new(4)
    a = color_choice.shuffle
    4.times do
      b[i] = a.pop
      i += 1
    end
    b
  end
end

# gjkla
class Game
  include Colors

  def color_get
    puts 'put color:| Red | Green | Cyan | Purple | Orange | Yellow | Black | White | note: first letter only'
    array = gets.chomp.upcase.split('')
    array.delete(' ')
    if color_check(array) == true
      if(array.length == 4)
        array
      else
        puts "invalid length of colors, You must put 4 at once"
      end
    end
  end

  def color_check(color)
    i = 0
    color.each do |v|
      if color_choice.none?(v) == true
        puts "#{v} color is not in the choices"
      else
        i += 1
      end
    end
    return true if i == 4
  end

  def check_near(check,ai_get)
    exact_location = 0
    included = 0
    check.each_with_index do |v,i|
      if ai_get.include?(v) == true
        if v == ai_get[i]
          exact_location += 1
        else
          included += 1
        end
      end
    end
    puts "near the location: #{included} \nExact Location: #{exact_location} \n "
  end

  def win(player_current_color,ai_get)
    if player_current_color == ai_get
      puts 'You Win!'
      true
    end
  end

  def play
    i = 0
    array = Array.new(4)
    ai_get = ai
    while i <= 8
      array[i] = color_get # array[i] values is value of the method color_get
      if array[i] != nil # you did not put 4 values the color_get, then the variable i will not be incremented
      print "turn #{i+1}: #{array[i]} \n \n"
      check_near(array[i],ai_get)
      break if win(array[i],ai_get) == true

      i += 1
      end
    end
    puts "Mastermind: #{ai_get}"
  end
end

Game.new.play
