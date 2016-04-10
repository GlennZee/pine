require 'pry' 

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # he's full
    @stuff_in_intestine = 0 # doesn't need to go
    
    puts @name + ' is born.'
  end
  
  # Feed
  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end
  
  # Walk
  def walk
    puts "You walk  #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end
  
  # Put to bed
  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
          passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
      if @asleep
        @asleep = false
        puts "#{@name} wakes up slowly."
      end
  end
  
  # Toss
  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end
  
  # Rock
  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop'
    end
  end
  
  private
  
  # following methods are internal
  
  # hungry?
  def hungry?
    @stuff_in_belly <= 2
  end
  
  # poopy?
  def poopy?
    @stuff_in_intestine >= 8
  end
  
  # passage of time, this is when things happen
  def passage_of_time
    if @stuff_in_belly > 0
        # move food from belly to intestine
        @stuff_in_belly = @stuff_in_belly - 1
        @stuff_in_intestine = @stuff_in_intestine + 1
      else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
    end
    puts @name + ' is starving! In desperation, he ate YOU!'
    exit
  end
  
  if @stuff_in_intestine >= 10
    @stuff_in_intestine = 0
    puts 'Whoops! ' + @name + ' had an accident...'
  end
  
  if hungry?
    if @asleep
     @asleep = false
      puts 'He wakes up suddenly!'
    end
    puts @name + '\'s stomach grumbles...'
  end
  
  if poopy?
    if @asleep
     @asleep = false
     puts 'He wakes up suddenly!'
    end
     puts @name + ' does the potty dance...'
    end
  end

end

# uncomment this down to method 1 to let dragon program run on its own
#pet = Dragon.new("Norbert")

=begin
pet.feed
pet.toss
pet.walk
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed

# Baby Dragon method 1
command = ""

while command != "exit"
puts "Do something with the dragon: 'feed', 'walk', 'toss', 'sleep', or 'exit'."
  command = gets.chomp
  case command  
    when "walk" then command == "walk"
      pet.walk
    when "feed" then command == "feed"
      pet.feed
    when "toss" then command == "toss"
      pet.toss
    when "sleep" then command == "sleep"
      pet.put_to_bed
    when "exit" then command == "exit"
      exit
    else 
      puts "I don't know that command"
  end
end

=end

# Baby Dragon method 2

puts "Name you dragon"
name = gets.chomp
pet = Dragon.new(name)
obj = Object.new #dummy object

command = ""

while true
puts
puts "Do something with #{name}: 'feed', 'walk', 'toss', 'sleep', or 'exit'."
  command = gets.chomp
  if command == "exit"
    exit
  elsif pet.respond_to?(command) && !obj.respond_to?(command)  
    # The takes away other program commands that may cause an issue.
    # We only want dragon commands.
    pet.send command
  else  
    puts "I don't know that command"
  end
end