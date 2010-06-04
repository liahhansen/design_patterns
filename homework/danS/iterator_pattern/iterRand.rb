class C
  def iterator
    return Iterator.new
  end

  class Iterator
    def initialize
      @i = 0
    end
    def next
      @i += 1
      return 2 ** (@i - 1)
    end
  end
end

class W
  def initialize(iterator)
    @powers = []
    # @recent_random = 0
    #     @index = 0
    @i = iterator
  end
  def next
    # current = @i.next
    #     @index += 1
    #     r = rand(@index)
    #     @recent_random = current if r == @index - 1
    #     current
    @powers << @i.next
    @powers.last
  end
  def random
    # @recent_random
    r = rand(@powers.length)
    @powers[r]
  end
end
