class School
  #attr_accessor :add_student, :grade
  #attr_reader :name, :add_student, :grade

  #ROSTER = {}

  def initialize(school_name) #, add_student, grade)
    @school_name = school_name
    @roster = {}
    #@add_student = add_student
    #@grade = grade
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @student_name = name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
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

school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.roster
school.sort
