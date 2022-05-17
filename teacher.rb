require './person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown', parent_permission = 'true', id = Random.rand(1..1000))
    super(age, name, parent_permission, id)
    @specialization = specialization
  end

  attr_accessor :specialization

  def can_use_services?
    true
  end
end
