class School
  attr_accessor :roster, :school_name
  
  def initialize(school_name)
    @roster = {}
    @school_name = school_name
  end
  
  def add_student(grade, student)
    @roster[grade] = []
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end
  
end