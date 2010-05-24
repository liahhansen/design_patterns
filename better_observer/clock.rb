class Clock
  attr_reader :time
  
  def initialize
    @time = Time.now
  end
end