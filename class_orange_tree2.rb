
require 'pry' 

class OrangeTree  
  def initialize name
    @name = name
    @height = 1
    @num_oranges = 0
    @age = 1
    @alive = true
  end
  
  def height
    if @alive 
      puts "#{@name} is now #{@height} feet tall. (a year passes)"
      one_year_passes
    else
      puts "This dead tree isn't very tall!"
    end
  end
  
  def count_the_oranges
    if @alive 
      puts "#{@name} has #{@num_oranges} oranges. (a year passes)"
      one_year_passes
    else
     puts "A dead tree doesn't have any oranges!"
    end
  end

  def pick_an_orange
   # binding.pry 
    if @alive 
      if @num_oranges == 0 
        puts "Bummer, there are no oranges to pick. (a year passes)"
        one_year_passes
      elsif @num_oranges == 1
        puts "The last orange was just picked! (a year passes)"
        one_year_passes
        @num_oranges == 0 
      elsif @num_oranges == 2
        puts "An orange was picked and it was a delicious! (a year passes)"
        one_year_passes
        @num_oranges = 1 
        puts "#{@name} now has one left. (a year passes)"
        one_year_passes
      else
        @num_oranges -=1 
        puts "An orange was picked and it was a delicious! 
        #{@name} now has #{@num_oranges} left. (a year passes)"
        one_year_passes
      end
    else
      puts "You can't pick oranges from a dead tree!"
    end
  end 
  
  
  def one_year_passes
    if @alive 
      @age +=1
      @num_oranges = 0
      if @age < 3
        @num_oranges = 0
        @height += 2
        puts "#{@name} is now #{@age} years old, has #{@num_oranges} oranges, and is #{@height} feet tall."
      elsif @age >= 3 && @age < 6
        @num_oranges = 3
        @height += 3
        puts "#{@name} is now #{@age} years old, has #{@num_oranges} oranges, and is #{@height} feet tall."
      elsif @age >= 6 && @age < 10
        @num_oranges = 8
        @height += 3
        puts "#{@name} is now #{@age} years old, has #{@num_oranges} oranges, and is #{@height} feet tall."
      elsif @age >= 10 && @age < 18
         @num_oranges = 15
         @height += 4
         puts "#{@name} is now #{@age} years old, has #{@num_oranges} oranges, and is #{@height} feet tall."
      else #tree dies
         @num_oranges = 0
         @height = 0
         puts "After #{@age} years, #{@name} is mulch and has gone to tree heaven!"
         @alive = false
      end
    end
  end
   
   
end #class end

tree = OrangeTree.new("Fred")
tree.height
tree.height
tree.height
tree.height
tree.count_the_oranges
tree.pick_an_orange


tree.height
tree.pick_an_orange
tree.count_the_oranges


tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.pick_an_orange
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.height
tree.height

