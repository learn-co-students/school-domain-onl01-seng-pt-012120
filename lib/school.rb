require "pry"

class School

#attr_reader :roster

def initialize(name)
    @name = name
    @roster = {}
end

def roster
    @roster
end

def add_student(student, grade)
    @astudent = student
    @grade = grade
    # if @roster[grade]
    #     @roster[grade]  << student
    # else
    #     @roster[grade] = []
    #     @roster[grade] << student     
    # end
    @roster[grade] ||= []
    @roster[grade] << student
end

def grade(num)
    @roster[num]
end

def sort
   @roster.each do |key, value|
    value.sort!
   end
end



end