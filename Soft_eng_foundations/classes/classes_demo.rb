class Dog
  def initialize(name, breed, color, age)
    @name = name
    @breed = breed
    @color = color
    @age = age
  end

  def name
    @name
  end
   
  def breed
    @breed
  end
   
  def color
    @color
  end

  # Setter  
  def color=(new_color)
    @color = new_color
  end

  def age
    @age * 7
  end

  # Setter
  def age=(new_age)
   @age = new_age * 7
  end

  def dog_action(people='')
    if people == "mailman"
      puts "WOOF! WOOF! #{@name} doesn't like #{people}"
    elsif people == "kid"
      puts "Lick! #{@name} loves #{people}'s'"
    else
      puts "woof! #{@name} doesn't care about you"
    end
  end
end

lucas = Dog.new('Lucas', 'Lab', 'yellos', 15)
neo = Dog.new('Neo', 'Lab', 'yellow', 13)
# puts "#{lucas.name}: #{lucas.age} year old"
# puts "#{neo.name}: #{neo.age} years old"

# ******

# lucas.color = "yellow"
# puts "#{lucas.color}"


# ******
lucas.dog_action()
neo.dog_action('mailman')