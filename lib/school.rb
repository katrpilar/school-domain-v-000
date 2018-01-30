class School
  ROSTER = {}
  
  def initialize(name)
    @name = name
  end
  
  def roster
    ROSTER
  end
  
  def add_student(student_name,grade)
    if ROSTER.has_key?(grade)
      ROSTER[grade] << student_name
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