require 'yaml'

=begin 
#require 'pry'; binding.pry

#YAML not needed here
filename = "GMZ.txt"
test_string = "This is the text that's in my test file"

File.open filename, "w" do |f|
    f.write test_string
end

read_string = File.read filename

puts(read_string == test_string)



#YAML is needed here
test_array = [["first line", "second line", "third line"],
["first line2", "second line2", "third line2"],
["first line2", "second line2", "third line2"]
]

test_string = test_array.to_yaml
filename = "testfile.txt"

File.open filename, "w" do |f|
  f.write test_string
end

read_string = File.read filename
read_array = YAML::load read_string

p(read_string == test_string)
p(read_array == test_array)

=end


#YAML is needed here

def yaml_save object, filename
  File.open filename, "w" do |f|
  f.write(object.to_yaml)
  end
end

def yaml_load filename
  yaml_string = File.read filename
  YAML::load yaml_string
end

test_array = ["thing1", "thing2", "thing3"]
filename = "yaml_object_ex.txt"

yaml_save test_array, filename
#read_array = yaml_load filename

puts (yaml_load filename == test_array)
