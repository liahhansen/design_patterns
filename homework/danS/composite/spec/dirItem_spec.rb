require "dirItem"

describe "dirItem" do
  describe "dirItem when empty" do
    it "should have zero items" do
      di = DirItem.new
      di.dirItems.length.should == 0
    end
  end
  describe "a dirItem with one item" do
    before(:each) do
      @di = DirItem.new
      @di.addItem('file')
    end
    it "should have one item" do
      @di.dirItems.length.should == 1
    end
    it "should be able to remove the item" do
      @di.removeItem(@di.dirItems[0])
      @di.dirItems.length.should == 0
    end
  end
  describe "dirItem that contains an item that contains an other item" do
    before(:each) do
      @di1 = DirItem.new
      @di2 = DirItem.new
      @di3 = DirItem.new
      @di2.addItem(@di3)
      @di1.addItem(@di2)
    end
    it "should have an item that contains another item" do
      @di1.dirItems[0].dirItems.length.should == 1
    end
  end
end
