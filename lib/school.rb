class School
  attr_accessor :roster, :school_name
  
  def initialize(school_name)
    @roster = {}
    @school_name = school_name
  end
  
  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, student_array|
      student_array.sort
    end
  end