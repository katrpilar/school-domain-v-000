class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student_name,grade)
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else 
      ROSTER[grade] = []
      ROSTER[grade] << student_name
    end
  end
  
  def grade(grade)
    ROSTER[grade]
  end
  
  def sort
    ROSTER.sort_by {|_key, value| value}.to_h
  end
end