class School
  attr_accessor :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{ |roster, grade| roster[grade] = [] }
  end
  
  def add_student(student, grade)
    roster ||= []
    @roster[grade] << student
  end
  
  def grade(grade)
    roster[grade]
  end

  def sort 
    roster.each do |student, grade|
      roster[student] = grade.sort 
    end
  roster
  end 
end 