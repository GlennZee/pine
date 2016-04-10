  def grandfather_clock(&dong)
    hours_passed = (Time.new.hour - 0).to_i
    
    if hours_passed > 12
      hours_passed = hours_passed - 12
    end 
    
    if hours_passed == 0
      hours_passed = 12
    end 
   
    hours_passed.times do
      dong.call
    end
  end

  grandfather_clock do
   puts "DONG!"
  end
  
  