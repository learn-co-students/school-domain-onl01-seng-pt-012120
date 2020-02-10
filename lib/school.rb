class School
  
  attr_accessor :school, :roster
  
  def initialize(school)
    @school = school
    @roster = {}
  end 
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name 
  end
  
  def grade(x)
    @roster[x]
  end 
  
  def sort 
    new_roster = {}
    @roster.each {|grade, names| new_roster[grade] = names.sort}
    new_roster
  end 
end 