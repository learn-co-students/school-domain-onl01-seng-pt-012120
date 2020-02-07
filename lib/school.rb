class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = { }
  end
end

  def name=(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def roster=(roster)
    @roster = roster
  end
  
  def roster
    @roster
  end
  
