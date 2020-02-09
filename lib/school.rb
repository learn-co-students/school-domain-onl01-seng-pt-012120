class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = { }
  end

  def add_student(name, grade)
    if @roster.key?(grade)
       @roster[grade] << name
    else
      @roster[grade] = [name] 
    end

  def grade(number)
    @roster[number]
    end
  end

  
  def sort
  @roster.each do |grade, name|
    @roster[grade] = name.sort
    end
  end
end

