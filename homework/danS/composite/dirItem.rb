class DirItem
  attr_accessor :dirItems
  def initialize(dirItems=[])
    @dirItems = dirItems
  end
  def addItem(item)
    @dirItems << item
  end
  def removeItem(item)
    @dirItems.delete(item)
  end  
end
