class DirItem < Item
  def initialize(dirItems=[])
    @dirItems = dirItems
  end
  def items
    @dirItems 
  end
  def addItem(item)
    @dirItems << item
  end 
end

class Item
  def initialize(type)
    @type = type
  end
  
end