class Dog
  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  def name
    @name
  end

  def breed
    @breed
  end

  def age
    @age
  end

  def age=(new_age)
    @age = new_age
  end

  def bark
    return age > 3 ? @bark.upcase : @bark.downcase
  end

  def favorite_foods
    @favorite_foods
  end
  
  def favorite_food?(food_item)
    @favorite_foods.any? { |food| food_item.downcase.include?(food.downcase) }
    #@favorite_foods.map(&:downcase).include(food_item.downcase)   #aA's solution
  end
end