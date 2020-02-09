# require "pry"

class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = { }
  end

  def add_student(name, grade)
    # binding.pry
    if @roster.key?(grade)
       @roster[grade] << name
    else
      @roster[grade] = [name] 
    end
    
  def grade
    @roster[grade] = [name]
  end
  end
end