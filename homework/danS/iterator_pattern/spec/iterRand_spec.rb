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
        # stub!(:rand).and_return(1,2,4,50)
        (0..9).each do |i|  
          nextVal = @w.next
          randVal = @w.random
          @values[0..i].should include(randVal)
          #puts "for a next value of #{nextVal} the random value is #{randVal}"
        end
      end
      it "should distribute random values evenly within 30%" do
        #setup
        results = Hash.new(0)
        repeat = 10000
        number_of_values = 10
        
        #collect values rand could return as keys
        number_of_values.times {results[@w.next] = 0}
        
        #call random multiple times and count occurrances of each possible value
        repeat.times do
          randValue = @w.random
          results[randValue] = results[randValue] + 1
        end
        
        #calculate range plus and minus 30% of equal
        allowable_difference = ((repeat / number_of_values) * 0.3).to_i
        highest_count = ((repeat / number_of_values) + allowable_difference).to_i
        lowest_count = ((repeat / number_of_values) - allowable_difference).to_i
        allowable_range = (lowest_count..highest_count)
        
        #print allowable range to screen
        puts "calling @w.random #{repeat} times with #{number_of_values} possible values"
        puts "each value should recur between #{lowest_count} and #{highest_count} times"
        
        
        #print results for developer
        results.keys.sort.each do |key|
          pass = allowable_range.include?(results[key]) ? 'PASS' : 'FAIL'
          puts "value #{key.to_s.rjust(3)} occurring #{results[key].to_s.rjust(5)} times is in allowable range #{pass}"
        end
        
        #test that results spread equally within allowable range
        results.keys.sort.each do |key|
          allowable_range.should include(results[key]) 
        end
      end
    end
  end
end
