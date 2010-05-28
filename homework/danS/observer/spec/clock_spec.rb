require 'clock'
describe Clock do
  before do
    @c = Clock.new
    @obs = Observer.new
  end
  
  it "should allow observers to be added" do
    obs1 = Observer.new
    @c.add(@obs)
    @c.observers.length.should == 1
  end
  
  it "should remove observers" do
    @c.add(@obs)
    @c.delete(@obs)
    @c.observers.length.should == 0
  end
  
  it "should only add observers (objects with update method) to the observer array" do
    pending
  end
  
  it "should notify observers" do
    obj = mock('obj')
    obj.should_receive(:update)
    @c.add(obj)
    @c.tick
  end
  
end
