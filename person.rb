require './nameable'
require './rental'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission = 'true', id = Random.rand(1..1000))
    super()
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  attr_reader :id
  attr_accessor :name, :age, :rentals, :parent_permission

  def of_age?
    return true if @age >= 18

    false
  end

  def can_use_services?
    return true if of_age? || @parent_permission == 'true'

    false
  end

  def correct_name
    @name
  end

  def add_rental(date, book, index_book, index_person)
    Rental.new(date, self, book, index_book, index_person)
  end

  public :can_use_services?, :of_age?
end
