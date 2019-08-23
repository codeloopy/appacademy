class Room

  def initialize(capacity)
    @capacity = capacity
    @occupants = []
  end


  def capacity
    @capacity
  end


  def occupants
    @occupants
  end


  def full?
    @occupants.count == @capacity
  end


  def available_space
    @capacity - @occupants.count
  end


  def add_occupant(person_name)
    if !self.full?
      @occupants << person_name
      true
    else
      false
    end
  end
  
end
