# code here!
class School
  
  # attr_accessor :roster, :student_name, :school_name
  # is this relevant? still passes the test without..
  
  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new { |h, k| h[k] = [] }
    # @roster = Hash.new { |name, grade| name[grade] = [] }
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    @roster[grade] << name
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
  
  
end