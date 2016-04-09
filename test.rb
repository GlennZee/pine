
filename = "bdays.txt"

=begin
File.foreach(filename).with_index do |line, line_num|
   puts "#{line_num}: #{line}"
end

=end

names_hash = Hash.new


File.readlines(filename).each do |line|
  line.chomp
 # puts "#{line}"
 
 #the next line splits the lines on commas 
 #and creates 2 array elements. Anything 
 #after the first element goes into the 2nd.
  split_line = line.split(",", 2) 
  
#  puts split_line
  names_hash[split_line[0].downcase] = split_line[1]
end

 names_hash.each { |name, bday| puts "#{name}: #{bday}" }
 
puts "Enter a name to get their bday" 
input = gets.chomp

 names_hash.each do 
   if |name| == input 
     puts |bday|
    else
      puts "Name not found"
    end
  end








