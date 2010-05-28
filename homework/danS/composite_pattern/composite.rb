class DivineIntervention
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def get_time
    0.0
  end
end

class Universe
  attr_reader :name, :stuff
  
  def initialize(name)
    @name = name
    @stuff = []
  end
  
  def add_stuff(stuff)
    @stuff << stuff
  end
  
  def get_time
    @stuff.inject(0.0) { |sum, stuff_add| sum + stuff_add.get_time }
  end
end

class Galaxy < Universe
  attr_reader :name
  
  def initialize(name)
    @name = name
    @stuff = []    
  end
  
end

class SolarSystem < Universe
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
end

class BlackHole
  attr_reader :name
  
  def get_time
    4.5
  end
end

class Planet
  attr_reader :name
  
  def get_time
    9
  end
end

class Moon
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def get_time
    5.5
  end
end

class Asteroids
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def get_time
    12
  end
end