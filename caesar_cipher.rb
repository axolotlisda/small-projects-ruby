#  > caesar_cipher("What a string!", 5)
#=> "Bmfy f xywnsl!"

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

#a-z 97 - 122
#A-Z 65 - 90

def caesar_cipher(string, shift)
    new_string = string.split('').map do |char|
      if char.match(/[a-z]/)
        char = char.ord + shift
        char = (char - 122) + 96 until char < 123 #so this is -26 until it is under 123 which is the ord for letters
        char.chr
      elsif char.match(/[A-Z]/)
        char = char.ord + shift
        char = (char - 90) + 64 until char < 91
        char.chr
      else char 
      end
    end
    puts new_string.join("")
  end
  
      password = gets.to_s
      factor = gets.to_i
      caesar_cipher(password, factor)