class School 
  attr_accessor :student_name, :grade 
  attr_reader :schoolname, :roster, :student_name, :grade  
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {} 
  end
  
  def add_student(student_name, grade)
    if @roster[grade]
       @roster[grade] << student_name
  else
    @roster[grade] = []
    @roster[grade] << student_name
  end #this code will make the program able to add both student name and grade 
  end 
  
  def grade(grade)
    @roster[grade] #retrieve students from an specific grade 
  end 
  
  def sort
    @roster.each do |grade, student_name|
      @roster[grade] = student_name.sort 
    end 
  end 
end 