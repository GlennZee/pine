
#require 'pry'; binding.pry

  require 'date'
  filename = "bdays.txt"


  names_hash = Hash.new

  File.readlines(filename).each do |line|
    name, date, year = line.split(",") 
    puts "#{name} #{date} #{year}"
    names_hash[name.downcase] = Time.gm(year, *(date.split))
  end

  #names_hash.each { |name, bday| puts "#{name}: #{bday}" }
 

  puts "Enter a name to get their bday" 
  input = gets.chomp.downcase
  
  bday = names_hash[input]
  birthday = bday.strftime("%b %d")
  #puts birthday

  now = Time.new
  age = now.year - bday.year
  input = input.gsub(/[A-Za-z']+/,&:capitalize)
 #input = input.split(" ").map(&:capitalize).join(" ") 
  #result is same as above line - both capitalize all words in the string
  
  
  if now.month >= bday.month && now.day > bday.day
    age +=1
    puts "#{input} will turn #{age} on #{birthday}."
  elsif now.month == bday.month && now.day == bday.day
       puts "#{input} turns #{age} today!!"
  elsif now.month < bday.month 
    puts "#{input} will turn #{age} on #{birthday}."
  end
  