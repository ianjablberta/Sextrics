class AddPositions < ActiveRecord::Migration
  def self.up
    Position.new({:name => 'Doggy Style'}).save
    Position.new({:name => 'Reverse Cowgirl'}).save
    Position.new({:name => 'Cowgirl'}).save
    Position.new({:name => 'Wife of India'}).save
    Position.new({:name => 'Ostrich Tail'}).save
    Position.new({:name => '69'}).save
    Position.new({:name => 'Wheel Barrow'}).save
    Position.new({:name => 'Head Down Ass Up'}).save
    Position.new({:name => 'Missionary'}).save
    Position.new({:name => 'Standing 69'}).save
    Position.new({:name => 'Superman'}).save
    Position.new({:name => 'Piledriver'}).save
    Position.new({:name => 'Impaler'}).save
    Position.new({:name => 'Cradle Swing'}).save
  end

  def self.down
    Position.find(:all).each {|p| p.destroy}
  end
end
