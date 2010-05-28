require "baker.rb"

describe "cake making tasks" do

  it "should mix dry ingredients" do
    adi = AddDryIngredientsTask.new
    adi.name.should == "Add dry ingredients"
    adi.get_time_required.should == 1.0
  end
  it "should add the wet ingredients" do
    awi = AddLiquidsTask.new
    awi.name.should == "Adding liquids glug glug glug"
    awi.get_time_required.should == 1.3
  end
  
  describe "Make Batter Task" do
    it "should make batter by instantiating subTasks" do
      genericTask = Task.new('generic task')
      AddDryIngredientsTask.should_receive(:new).and_return(genericTask)
      AddLiquidsTask.should_receive(:new).and_return(genericTask)
      MixTask.should_receive(:new).and_return(genericTask)
      MakeBatterTask.new
    end
    it "should have a time equal to the sum of all subtasks times" do
      sum = AddDryIngredientsTask.new.get_time_required +
            AddLiquidsTask.new.get_time_required +
            MixTask.new.get_time_required
      mbt = MakeBatterTask.new
      mbt.get_time_required.should == sum
    end
    it "should have subtasks that know their parent" do
      mbt = MakeBatterTask.new
      mbt.sub_tasks.each do |task|
        task.parent.should == mbt
      end
    end
  end
end