class Task
  attr_accessor :name, :parent
  def initialize(name)
    @name = name
    @parent = nil
  end
  def get_time_required
    0.0
  end
end

class CompositeTask < Task
  attr_reader :sub_tasks
  
  def initialize(name)
    super(name)
    @sub_tasks = []
  end
  def <<(task)
    task.parent = self
    @sub_tasks << task
  end
  def remove_sub_task(task)
    @sub_tasks.delete(task)
    task.parent = nil
  end
  def [](index)
    @sub_tasks[index]
  end
  def []=(index, task)
    task.parent = self
    @sub_tasks[index] = task
  end
  def get_time_required
    @sub_tasks.inject(0) {|time, task| time += task.get_time_required}
  end
end

class AddDryIngredientsTask < Task
  def initialize
    super('Add dry ingredients')
  end
  def get_time_required
    1.0
  end
end

class MixTask < Task
  def initialize
    super("Mix that batter up")
  end
  def get_time_required
    3.0
  end
end

class AddLiquidsTask < Task
  def initialize
    super("Adding liquids glug glug glug")
  end
  def get_time_required
    1.3
  end
end

class MakeBatterTask < CompositeTask
  def initialize
    super("Make batter")
#    @sub_tasks << AddDryIngredientsTask.new
#    @sub_tasks << AddLiquidsTask.new
#    @sub_tasks << MixTask.new
    self << AddDryIngredientsTask.new
    self << AddLiquidsTask.new
    self << MixTask.new
  end
end

class MakeCakeTask < CompositeTask
  def initialize
    super("Make Cake")
    [MakeBatterTask, BakeTask, FrostCakeTask, PackageTask].each {|t| @sub_tasks << t.new}
  end
end
