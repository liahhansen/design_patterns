module Observer

  attr_reader :observers

  def initialize
    @observers = []
  end

  def add_observer(obs)
    @observers << obs
  end

  def remove_observer(obs)
    @observers.delete(obs)
  end

  def notify_observers
    @observers.each {|o| o.update}
  end

end