class School
def initialize(roster)
  @roster = {}
end
def roster
  @roster
end
def add_student (name,grade)
 @roster[grade] ? @roster[grade]<< name : @roster[grade] =[name]

  # student_hash = {grade => [name]}
  # @roster = student_hash
  # @roster.map do |st_num,st_name|
# if @roster[grade.two_sym]
end
def grade (grade)
  @roster[grade]
end
def sort
  @roster.each do |key, value|
    value.sort!
end
end
end 
