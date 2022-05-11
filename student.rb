require './person'

class Student < Person
  def initialize(age, name = 'Unknown', parent_permission = 'true')
    super(age, name, parent_permission)
  end

  attr_accessor :classroom

  def play_hooky
    '¯\(ツ)/¯'
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  public :play_hooky
end
