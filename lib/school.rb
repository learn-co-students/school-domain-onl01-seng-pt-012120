# code here!
class School
attr_accessor :roster , :name , :school 
attr_reader :school
  def initialize(name)
   @name = name
   @roster = {}
  end
  

def add_student (student,grade)
  
    if @roster[grade]
         @roster[grade]  << student
     else
         @roster[grade] = []
         @roster[grade] << student     
     end
end

def sort
    @roster.each do |key, value|
      value.sort!
    end
end

def grade(number)
    @roster[number]
end
 
end
