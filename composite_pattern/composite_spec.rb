require 'composite'
describe DivineIntervention do
  before do
    @god = DivineIntervention.new('god')
  end
  
  it "#get_time should give time to perform divine intervention" do
    @god.get_time.should == 0.0
  end
  
  it "#name should know its name" do
    @god.name.should == "god"
  end
end

describe Universe do
  before do 
    @universe = Universe.new('universe')
    @andromeda = Galaxy.new('andromeda')
    @milky_way = Galaxy.new('milky way')
    @sun_system = SolarSystem.new('our solar system')
    @another_sun_system = SolarSystem.new('another solar system')
  end
     
  it "should have many galaxies" do
    @universe.stuff.should == []
    @universe.add_stuff(@andromeda)
    @universe.stuff.should == [@andromeda]
  end
  
  it "#get_time should give time to create universe" do
    
    @andromeda.add_stuff(@sun_system)
    @andromeda.add_stuff(@another_sun_system)
    @universe.add_stuff(@andromeda)
    @universe.get_time.should == @andromeda.get_time
    @universe.add_stuff(@milky_way)
    @universe.get_time.should == 14
  end
  
  it "#name should know its name"
end

describe Galaxy do
  it "should have many solar systems"
  it "should have black holes"
  it "should have asteroids"
  it "#get_time should give time to create a Galaxy"
  it "#name should know its name"
end

# describe BlackHole do
#   it "#get_time should give time to create a Black Hole"
#   it "#name should know its name"
# end
# 
describe SolarSystem do
  it "should have many planets"
  it "should have many asteroids"
  it "#get_time should give time to create a Solar System"
  it "#name should know its name"
end

# describe Planet do
#   it "should have moons"
#   it "#get_time should give time to create a Planet"
#   it "#name should know its name"
# end
# 
# describe Moon do
#   it "#get_time should give time to create Moon"
#   it "#name should know its name"
# end
# 
# describe Asteroids do
#   it "#get_time should give time to create Moon"
#   it "#name should know its name"
# end
  