class Clock
  
  attr_reader :observers
  def initialize
    @observers = []
  end
  
  def add(obs)
    @observers << obs
  end
  
  def delete(obs)
    @observers.delete(obs)
  end
  
  def tick
    notify(Time.now)
  end 
  
  def notify(time)
    @observers.each {|o| o.update(time)}
  end
  
end

class Observer
  
end