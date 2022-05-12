class Classroom
  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student unless students.include?(student)
    student.classroom = self
  end

  attr_accessor :label, :students
end
