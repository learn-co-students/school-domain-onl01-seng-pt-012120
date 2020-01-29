class School
  
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name,grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
    @roster
  end
  
  def grade(num)
    return @roster[num]
  end
  
  def sort
    @roster.collect do |k,v|
      @roster[k].sort!
    end
    @roster
  end
    
  
  
end