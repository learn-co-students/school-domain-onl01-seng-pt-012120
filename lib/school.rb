class School
  attr_reader(:name, :roster)
  
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
  def add_student(student_name, student_grade)
    if @roster.include?(student_grade)
      @roster[student_grade] << student_name
    else
      @roster[student_grade] = []
      @roster[student_grade] << student_name
    end
  end
  
  def grade(class_grade)
    return @roster[class_grade]
  end
  
  def sort()
    @roster.each do |k, v|
      v.sort!
    end
    
    return @roster
  end
end