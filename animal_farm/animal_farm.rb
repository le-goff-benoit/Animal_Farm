require './animals/dog', './animals/duck', './animals/horse'

class AnimalFarm

  def welcome(animal)
    @animals = [] if @animals.nil?
    @animals << animal
  end

  def food_for(animal)
    case(animal)
      when Horse
        food = 'Hay'
      when Duck
        food = 'Pond weed'
      when Dog
        food = 'Peanut butter'
      else
        food = 'No idea for this animal.  Probably bread'
      end
  end

  def how_full?
    case(@animals.length)
      when 0
        "We're empty!"
      when 1
        "One lonely animal..."
      when 2
        "We've plenty of room"
      when 3
        "We're nearly full...!"
      when >=4
        "No more room at the farm"
      else
        "There is a problem..."
      end
  end

  def sunrise
    @animals.each do |animal|
      animal.wake_up!
    end
  end

  def sunset
    @animals.each do |animal|
      animal.go_to_sleep
    end
  end

  def all_sleep?
    if @animals.all(sleeping)
      true
    end
  end

  def number_of(type_of_animal)
    counter = 0
    @animals.each do |animal|
      if animal.kind_of? == type_of_animal
        counter++
      end
    end
    return counter
  end

end
