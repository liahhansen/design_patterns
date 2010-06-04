require "iterRand"

describe "C class" do
  before do
    @c = C.new
  end
  it "should produce an iterator" do
    @c.iterator.should_not be nil
  end
  describe "the iterator" do
    before do
      @iter = @c.iterator
      @values = [1,2,4,8,16,32,64,128,256,512]
    end
    it "should produce powers of 2 for each next call" do
      @values.each {|val| @iter.next.should == val}
    end
    describe "W class" do
      before do
        @w = W.new(@iter)
      end
      it "should return powers of 2 for each next call" do
        @values.each {|val| @w.next.should == val}
      end
      it "should return random elements from the set of elements returned by @iter.next" do
        stub!(:rand).and_return(1,2,4,50)
        (0..9).each do |i|  
          nextVal = @w.next
          randVal = @w.random
          @values[0..i].should include(randVal)
          puts "for a next value of #{nextVal} the random value is #{randVal}"
        end
      end
    end
  end
end
