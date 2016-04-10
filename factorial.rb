
#require 'pry'; binding.pry

#method
=begin
def factorial num
  if num < 0 
    puts "Number must be > 0."
  end
  
   if num <= 1
     num = 1
    else
      num * factorial(num - 1)
    end
end
  
puts factorial(4)
=end

#Class


class Integer
  def factorial 
    if self < 0 
      puts "Number must be > 0."
    end
    
    if self <= 1
       1
    else
        self * (self - 1).factorial
    end
  end
end

puts 4.factorial
puts 8.factorial



