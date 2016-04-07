
=begin ***My super long complicated way***

  puts "Enter a number between 1 and 3000"
  integer = gets.chomp.to_s
 

 array = integer.to_s.chars.map(&:to_i)
 
 #get array length. If length = 4 then do whatever, if length = 3, then do whatever, etc

  array_length = array.length
  case array_length
     when 4
      array[0].to_i.times { |x| print "M" }
      if array[1].to_i > 4 
          print "D"
          (array[1] - 5).times { |x| print "C" }
      elsif array[1].to_i < 5 
        array[1].times { |x| print "C" }
      end  
      if array[2].to_i >= 5 
        print "L"
        (array[2] - 5).times { |x| print "X" }
      elsif array[2].to_i < 5 
       array[2].times { |x| print "X" }
      end 
       if array[3].to_i >= 5 
        print "V"
        (array[3] - 5).times { |x| print "I" }
      elsif array[3].to_i < 5 
       array[3].times { |x| print "I" }
      end 
     else
      puts "Number is bigger than 9,999"
   end
  
   puts

  
# A Better Way  
  def roman_numeral(num)
    roman = '' 
    
    roman = roman + 'M' * (num / 1000)
    roman = roman + 'D' * (num % 1000 / 500)
    roman = roman + "C" * (num % 500 / 100)
    roman = roman + "L" * (num % 100 / 50)
    roman = roman + "X" * (num % 50 / 10)
    roman = roman + "V" * (num % 10 / 5)
    roman = roman + "I" * (num % 5 / 1)
    roman
  end
  
 puts "Enter a number between 1 and 9,999"
 i = gets.chomp.to_i
 puts roman_numeral(i)
 
=end

require 'pry';  binding.pry

# And a Bit Better  
  def roman_numeral(num)
    raise "Number must be greater than 0" if num <= 0
    roman = '' 
    
    puts num % 1000 
    puts num % 500 
    puts num % 100 
    puts num % 50 
    puts num % 10 
    puts num % 5 
    roman << 'M' * (num / 1000)
    roman << 'D' * (num % 1000 / 500)
    roman << "C" * (num % 500 / 100)
    roman << "L" * (num % 100 / 50)
    roman << "X" * (num % 50 / 10)
    roman << "V" * (num % 10 / 5)
    roman << "I" * (num % 5 / 1)
    roman
  end
  
 puts "Enter a number between 1 and 9,999"
 i = gets.chomp.to_i
 puts roman_numeral(i)
 