def profile block_description, &block
  # To turn profiling on/off set this to true/false
  profiling_on = true
  
  if profiling_on
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration}"
  else
    block.call
  end
end


profile "2500 Doublings" do
  number = 1
  
  25000.times do  
      number = number + number
  end  
  
  puts "#{number.to_s.length} digits"
end

profile "Count to a Million" do
  number = 0
  
  1000000.times do  
    number +=1
  end
end


profile "Look at what I'm doing" do
    5.times do  
      puts "I'm doing stuff"
    end
end
