class School
  attr_accessor :roster
  
  def initialize(name)
    @roster = {}
  end
  
  def add_student(name, x)
    @roster[x] ||= []
    @roster[x] << name
  end
  
  def grade(x)
    @roster[x]
  end
  
  def sort
    new_roster = {}
    @roster.each do |x, name|
      new_roster[x] = name.sort
    end
    new_roster
  end
end

