=begin
Add as many words as we want (1 per line) and then hit enter on 
an empty line to exit and puts the list alphabetically


# Method 1
words = []

puts "Enter a new word on each line; hit enter on an empty line to stop"
word = gets.chomp
  
while word.length > 0
   words.push "#{word}"
   word = gets.chomp
end

puts words.sort
=end



# Method 2
puts "Enter a new word on each line; hit enter on an empty line to stop"
words = []

while true
   word = gets.chomp
   if word == ''
    break
  end
  words.push word
end

puts words.sort


=begin
# Method 3
puts "Enter a new word on each line; hit enter on an empty line to stop"
words = []

while true
   word = gets.chomp
   break if word.empty?
    words << word
end

puts words.sort
=end

