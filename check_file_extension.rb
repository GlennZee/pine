file1 = "file.txt"
file2 = "image.jpg"

def is_file_jpg(file_name)
     file_name[-4..-1].downcase == ".jpg"
end

puts is_file_jpg(file2) # => true
puts is_file_jpg(file1) # => false
