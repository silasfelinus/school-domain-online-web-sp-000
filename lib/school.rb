class School
  attr_accessor :name, :roster, :grade

  def initialize(name)
  @name = name

  @roster = {}
  end

  def add_student(name, grade)
    if !roster.key?(grade)
      roster[grade] = []
    end
    roster[grade] << name
    roster[grade].value.sort!
  end

  def grade(grade)
    roster[grade]
  end

  def sort()
    roster.sort
end
end
