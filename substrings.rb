def substring(value, array)
    # value = 'below the lower'
    leng = value.length
    # array = ["below", "bel", "low", "el", "lo",]
    array2 = [] # container for matching words
    i = 0
    j = 0
    part = Array.new(leng) { Array.new(leng) } # empty array, temporary container for all the values/words
    while i < leng
      j = 0
      # puts "1. i: #{i}, j: #{j}"
      while j < leng
  
        part[i][j] = value[i..j]
        # puts part[i][j]
        if part[i][j].length >= 3 # it will only push words with 3 letters and above
          if array.include?(part[i][j]) # if array which is the dictionary includes the current word part[#][#] the it will push to array2
            array2.push(part[i][j])
            # puts "pushed #{array2}"
          end
        end
        # puts "i: #{i}, j: #{j}, #{part[i][j]}"
        # puts "2. i: #{i}, j: #{j}"
        j += 1
      end
      i += 1
    end
    # puts "0: #{array2}"
  
    count = array2.each_with_object(Hash.new(0)) do |vote, result| # reduce then convert to hash
      result[vote] += 1
      # result = {}, vote = bel
      # result = {"bel" => 1} vote = below
      # result = {"bel" => 2, "below" => 1}
      # ...
    end
  
    puts "\n#{count}"
  end
  
  puts 'words to count: '
  words = gets.to_s.downcase
  dictionary = %w[below bel low ela lot elo night light aight bot]
  puts "dictionary: #{dictionary}"
  substring(words, dictionary)
  