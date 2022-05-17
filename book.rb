require './rental'

class Book
  def initialize(title, author, id = Random.rand(1..1000))
    @id = id
    @title = title
    @author = author
    @rentals = []
  end

  attr_accessor :title, :author, :rentals, :id

  def add_rental(date, person)
    Rental.new(date, person, self)
  end
end
