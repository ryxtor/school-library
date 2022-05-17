require './person'

class Student < Person
  def initialize(age, name = 'Unknown', parent_permission = 'true', id = Random.rand(1..1000))
    super(age, name, parent_permission, id)
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
