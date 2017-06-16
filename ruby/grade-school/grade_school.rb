class School
  def initialize
    @students = Hash.new([])
  end

  def add(student, grade)
    @students[grade] += [student]
  end

  def students(grade)
    @students[grade].sort
  end

  def students_by_grade
    result = []

    @students.sort.to_h.each do |k, v|
      result << { grade: k, students: students(k) }
    end

    result
  end
end

module BookKeeping
  VERSION = 3
end