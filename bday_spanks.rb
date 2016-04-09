#require 'pry'; binding.pry

# This gets someone's bday and puts out SPANK for each year 

#************************************************
# 1. This is the really long and bad way to do it
#************************************************

=begin
puts "what year were you born?"
year = gets.chomp.to_i

puts "what month were you born?"
month = gets.chomp.to_i

puts "what day were you born?"
day = gets.chomp.to_i

puts "Your DOB: " + Time.gm(year, month, day).to_s
#=end

time = Time.now

current_year = time.year
current_month = time.month
current_day = time.day
bday_spanks = current_year - year

#puts bday_spanks

#=begin
if current_month < month
    bday_spanks = bday_spanks - 1
    puts "#{bday_spanks} SPANKS!"
elsif current_month > month
  puts "#{bday_spanks} SPANKS!"
elsif current_month = month
    if current_day < day
      bday_spanks = bday_spanks - 1
      puts "#{bday_spanks} SPANKS!"
    else 
      puts "#{bday_spanks} SPANKS!"
    end
else
    puts "#{bday_spanks} SPANKS!"
end
=end

#***********************
# 2. Better way 
#***********************

puts "what year were you born?"
year = gets.chomp.to_i

puts "what month were you born?"
month = gets.chomp.to_i

puts "what day were you born?"
day = gets.chomp.to_i

bday = Time.local(year, month, day)
time = Time.now

age = 1

while Time.local(year + age, month, day) <= time
  puts "SPANK!"
  age +=1
end

age = age - 1 
puts "Thats #{age} Spanks!"



#***********************
# 3. Even better way 
#***********************

puts "Enter age in YYYYMMDD format."
input = gets.chomp

b_year = input[0..3].to_i
b_month = input[4..5].to_i
b_day = input[6..7].to_i

t = time.new

# I stopped entering the code here...look in the book


