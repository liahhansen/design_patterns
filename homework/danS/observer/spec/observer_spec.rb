require "observer_pattern"

describe "Observer" do

  before(:each) do
    class Test
      include Observer
    end
    @o = Test.new
  end

  it "should add observers" do
    @o.add_observer('x')
    @o.observers.length == 1
  end

  it "should remove observers" do
    @o.add_observer('x')
    @o.add_observer('y')
    @o.observers.length.should == 2
    @o.remove_observer('y')
    @o.observers.length.should == 1
  end

  it "should notify observers" do
    obs = mock("observer")
    obs.should_receive(:update).once
    @o.add_observer(obs)
    @o.notify_observers
  end
end