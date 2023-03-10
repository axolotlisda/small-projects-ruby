def bubble_sort(array)
  leng = array.length - 1 #if it's not -1 it will check array[i] = leng + 1 which will cause error since the value of that is 
  #nil and you cannot compare that to an integer
  sorted = false
  sortcount = true
  
  
  x = 0


  while x < leng && sorted == false
    sortcounting = false
  array.each_with_index do |num, i|
    if i < leng - x #since the first far right numbers are the first to be sorted we will not check them anymore, for optimization
     if array[i] > array[i + 1]
      array[i] = array[i + 1] #SW
      array[i + 1] = num      #AP
       sortcounting = true    #if sortcounting did not change to true then GG's na
      end
    end
  end
      if sortcounting == false
      sorted = true
        puts "done! It's Sorted: "
    end
  
  x += 1
end
 p " #{array}"
end



sort = [4,3,78,2,1,1000,3000,4501,1545,21,45,12,564,21,64,100,201,245,356,784,451,452,654,351,245,484,454,565,245,225,885,454,757,656]
bubble_sort(sort)