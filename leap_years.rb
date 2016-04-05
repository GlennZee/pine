puts "Enter start year (low year)" 
start_year = gets.chomp.to_i

puts "Enter end year (higher than start year)" 
end_year = gets.chomp.to_i

=begin
while end_year > start_year - 1 
    if start_year % 4 == 0
      puts "Leap Year: #{start_year}"
      start_year += 1
    elsif 
      start_year % 100 == 0 && start_year % 400 == 0
      puts "Leap Year: #{start_year}"
       start_year += 1
    else
       start_year += 1
    end
end
=end

=begin
end_year.downto(start_year) do |year|
    if (start_year % 4 == 0) || (start_year % 100 == 0 && start_year % 400 == 0)
      puts "Leap Year: #{start_year}"
      start_year += 1
    else
       start_year += 1
    end
end
=end


(start_year..end_year).each do |year|
     next if year%4 != 0
     next if (year%100 == 0 && year % 400 != 0)
     puts "Leap Year: " + year.to_s
   end


=begin
***I've listed 3 different ways to do it***

test all years from start to end for being either:
1) divisible by 4 
2) divisible by 100 and 400
-then add one to start_year

1) Print each year that meets either criteria into its own row

2)Add all years that are true for either criteria to an array.
Output each member of the array in single rows. 
=end






