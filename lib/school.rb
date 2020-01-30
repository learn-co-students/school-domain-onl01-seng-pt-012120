# code here!
class School
  
  attr_accessor :student, :roster
  
  def initialize(school)
    @school = school
    @roster = {}
  end 
    
  
  def add_student(student,grade)
    if self.roster[grade] == nil
      self.roster[grade] = []
      self.roster[grade] << student
    else 
      self.roster[grade] << student 
    end 
  end
  
  def grade(grade)
    self.roster[grade]
  end 
  
  def sort 
    self.roster[9].reverse! #sort{|g1,g2| g1<=>g2}
    self.roster.sort_by(&:first).to_h #{|grade1, grade2| grade2<=>grade1}
    #self.roster
  end 
  
end