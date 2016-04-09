require 'yaml'


#require 'pry'; binding.pry

file_names = Dir["/home/ubuntu/workspace/files/*.*"] 
#file_names = Dir["*.*"]
#file_names = Dir.entries("/*.*")

puts file_names

#=begin
puts "What's the batch name?"
batch_name = gets.chomp

puts 
print "Downloading #{file_names.length} files"
puts 

file_num = 1

file_names.each do |name|
  print "."
  new_name = "#{batch_name}_#{file_num}.txt"
  if File.exist? new_name
    puts "#{new_name} already exists in destination folder! - exiting"
    exit
  end
  File.rename name, new_name
  
  file_num +=1
end

#=end
  


   
   