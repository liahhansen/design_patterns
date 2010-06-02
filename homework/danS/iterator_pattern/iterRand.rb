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
    @i = iterator
  end
  def next
    @powers << @i.next
    @powers.last
  end
  def random
    @powers[rand(@powers.length)]
  end
end
