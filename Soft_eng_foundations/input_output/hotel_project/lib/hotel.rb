require_relative "room"
require 'byebug'

class Hotel

  def initialize(name, room)
    @name = name
    @rooms = Hash.new
    
    room.each do |k,v|
      self.rooms[k] = Room.new(v)
    end
  end


  def name
    @name.split(' ').map { |word| word.capitalize}.join(' ')
  end


  def rooms
    @rooms
  end


  def room_exists?(room_name)
    self.rooms.include?(room_name)
  end


  def check_in(person_name, room_name)
    if !room_exists?(room_name)
      puts 'sorry the specified room does not exist'
    else
      if !self.rooms[room_name].full?
        self.rooms[room_name].add_occupant(person_name)
        puts 'check in successful'
      else
        puts 'sorry, room is full'
      end
    end
  end

  # debugger
  def has_vacancy?
    self.rooms.each do |room, capacity|
      if capacity.full?
        return false
      else 
        return true
      end
    end
  end


  def list_rooms
    @rooms.each { |room, c| puts "#{room} #{self.rooms[room].available_space}" }
  end

end